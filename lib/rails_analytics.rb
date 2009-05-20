require 'uri'
require 'cgi'
require 'net/http'
require 'rails_analytics/google_analytics_adapter'

module RailsAnalytics
  # generic adapter not found exception
  class AnalyticsAdapterNotFound < StandardError
  end

  class AnalyticsConfig < Struct.new(:name,:analytics_id, :domain, :type)
  end

  def self.config(analytics)
    begin
      s = analytics.type.to_s + "_adapter"
      adapter = "RailsAnalytics::" + s.camelize
      tracker = adapter.constantize.new(analytics)
      silence_warnings { Object.const_set "ANALYTICS_TRACKER", tracker }
    rescue StandardError
      raise AnalyticsAdapterNotFound
    end
  end

  module InstanceMethods
    # any methods here will apply to instances
    def track_it(path, name=nil)
      if defined?(ANALYTICS_TRACKER)
        ANALYTICS_TRACKER.track(path,name)
      else
        nil
      end
    end
  end
end

