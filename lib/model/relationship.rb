require_relative 'services'

class Relationship < Object
    def self.create(raw)
    end

    attr_reader :source_id
    attr_reader :target_id

    def source
        Object.create(Services.object.get_object(repository_id, source_id, nil, false, false, nil, false, false))
    end

    def target
        Object.create(Services.object.get_object(repository_id, target_id, nil, false, false, nil, false, false))
    end

end