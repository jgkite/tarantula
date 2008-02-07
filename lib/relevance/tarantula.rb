require 'forwardable'

require 'facets/enumerable/injecting'
require 'facets/kernel/metaclass'


module Relevance; end
module Relevance; module CoreExtensions; end; end
module Relevance
  module Tarantula 
    def log(msg)
      puts msg if verbose
    end
    def rails_root
      ::RAILS_ROOT
    end
    def verbose
      ENV["VERBOSE"]
    end
  end
end

require 'relevance/core_extensions/file'
require 'relevance/core_extensions/response'

require 'relevance/tarantula/results_handler'
require 'relevance/tarantula/invalid_html_handler'
require 'relevance/tarantula/crawler'
require 'relevance/tarantula/form'
require 'relevance/tarantula/form_submission'
require 'relevance/tarantula/html_reporter'
