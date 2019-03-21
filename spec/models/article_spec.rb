require 'rails_helper'

RSpec.describe Article, type: :model do
    describe 'DB table' do
        it { is_expected.to have_db_column :id }
        it { is_expected.to have_db_column :title }
        it { is_expected.to have_db_column :lead }
        it { is_expected.to have_db_column :content }
        it { is_expected.to have_db_column :premium }
    end

    describe 'Validations' do
        it { is_expected.to validate_presence_of :title }
        it { is_expected.to validate_presence_of :lead } 
        it { is_expected.to validate_presence_of :content }
        it { is_expected.to validate_presence_of :premium }
    end

    describe 'Associations' do
        it { should have_and_belong_to_many(:categories) }
    end

    describe 'Factory' do
        it 'should have valid Factory' do
            expect(FactoryBot.create(:article)).to be_valid 
        end
    end
end