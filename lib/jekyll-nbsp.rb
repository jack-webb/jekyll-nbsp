module Jekyll
  module NonBreakingSpaceFilter
    def nbsp(input)
      input.to_s.gsub(' ', "\u00A0")
    end
  end
end

Liquid::Template.register_filter(Jekyll::NonBreakingSpaceFilter)

