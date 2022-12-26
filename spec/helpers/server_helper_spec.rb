# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerHelper do
  describe 'check result function' do
    it 'good' do
      expect(ServerHelper.result_array(11)).to eq([[2, 3, 5, 7, 11], [3, 7, 31, 127, 2047]])
    end
    it 'zero value' do
      expect(ServerHelper.result_array(0)).to eq([[], []])
    end
    it 'invalud value' do
      expect(ServerHelper.result_array(-21)).to eq([[], []])
    end
  end
end