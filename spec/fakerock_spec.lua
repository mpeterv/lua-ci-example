local fakerock = require "fakerock"

describe("fakerock.get_number", function()
   it("returns a number", function()
      assert.is_number(fakerock.get_number())
   end)
end)
