require 'rails_helper'

RSpec.describe SkiAreaResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'ski_areas',
          attributes: { }
        }
      }
    end

    let(:instance) do
      SkiAreaResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { SkiArea.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:ski_area) { create(:ski_area) }

    let(:payload) do
      {
        data: {
          id: ski_area.id.to_s,
          type: 'ski_areas',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      SkiAreaResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { ski_area.reload.updated_at }
      # .and change { ski_area.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:ski_area) { create(:ski_area) }

    let(:instance) do
      SkiAreaResource.find(id: ski_area.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { SkiArea.count }.by(-1)
    end
  end
end