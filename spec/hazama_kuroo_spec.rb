RSpec.describe HazamaKuroo do
  it "has a version number" do
    expect(HazamaKuroo::VERSION).not_to be nil
  end

  it "greet test" do
    expect(HazamaKuroo.greet).to be nil
  end
end
