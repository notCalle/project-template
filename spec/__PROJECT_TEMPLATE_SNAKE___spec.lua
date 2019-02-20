local __PROJECT_TEMPLATE_CAMEL__ = require'__PROJECT_TEMPLATE_SNAKE__'

describe("__PROJECT_TEMPLATE_SNAKE__", function()
    it("has a version", function()
        assert.is.string(__PROJECT_TEMPLATE_CAMEL__._VERSION)
    end)
end)
