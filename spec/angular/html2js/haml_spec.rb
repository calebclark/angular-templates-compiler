require 'angular/ngt/haml'

module Angular
  module NGT
    describe  Haml do
      it 'has a blank mime type' do
        described_class.default_mime_type.should be_nil
      end
    end
  end
end
