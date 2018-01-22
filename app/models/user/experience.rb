class User
    module Experience
        extend ActiveSupport::Concern

        included do
            field :experience, type: Integer, default: 0
            api_property :experience
            index({experience: 1})
        end

        def credit_experience(amount)
            return nil if anonymous?
            if amount > 0
                inc(experience: amount)
                self
            elsif amount < 0
                where_self
                    .gte(experience: -amount)
                    .find_one_and_update({$inc => {experience: amount}},
                                         return_document: :after)
            else
                self
            end
        end

        def debit_experience(amount)
            credit_experience(-amount)
        end
    end
end
