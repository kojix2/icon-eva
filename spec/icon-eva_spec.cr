require "./spec_helper"

describe Icon::Eva do
  it "provides every generated image" do
    {% for constant in Icon::Eva.constants %}
      Icon::Eva::{{ constant.id }}.bounds.width.should be > 0
      Icon::Eva::{{ constant.id }}.bounds.height.should be > 0
    {% end %}
    {{ Icon::Eva.constants.size }}.should eq(490)
  end

  it "exposes the documented variants with correct dimensions" do
    Icon::Eva::Heart24Filled.bounds.width.should eq(24)
    Icon::Eva::Heart24Outline.bounds.height.should eq(24)
    Icon::Eva::Heart24Filled.at(0, 0).rgba[3].should eq(0)
  end
end
