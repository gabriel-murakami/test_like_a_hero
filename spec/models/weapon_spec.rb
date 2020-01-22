require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it 'current power is valid' do
    weapon = build(:weapon)
    expect(weapon.current_power).to eq((weapon.power_base + ((weapon.level - 1) * weapon.power_step)))
  end

  it 'returns the correct title for weapon ' do
    weapon = build(:weapon)
    expect(weapon.title).to eq("#{weapon.name} ##{weapon.level}")
  end
end
