module Count
    extend ActiveSupport::Concern
    
    class_methods do
        def read_amount
            where(status: 'Lido').count
        end
    end
end