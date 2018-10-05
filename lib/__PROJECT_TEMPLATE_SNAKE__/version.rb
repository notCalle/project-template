# frozen_string_literal: true

module __PROJECT_TEMPLATE_CAMEL__ # rubocop:disable Style/Documentation
  begin
    require 'git-version-bump'
    VERSION = GVB.version.freeze
  rescue LoadError
    VERSION = '0.0.0.UNDEF'
  end
end
