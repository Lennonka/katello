require 'pulp_rpm_client'
require 'pulp_container_client'
require 'pulp_ostree_client'
PulpRpmClient::RpmRpmDistribution.class_eval do
  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `PulpRpmClient::RpmRpmDistribution` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `PulpRpmClient::RpmRpmDistribution`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'base_path')
      self.base_path = attributes[:'base_path']
    end

    if attributes.key?(:'content_guard')
      self.content_guard = attributes[:'content_guard']
    end

    if attributes.key?(:'hidden')
      self.hidden = attributes[:'hidden']
    # Monkey-patch here. The rest of the initializer is copied from the library code.
    #else
    #  self.hidden = false
    end

    if attributes.key?(:'pulp_labels')
      if (value = attributes[:'pulp_labels']).is_a?(Hash)
        self.pulp_labels = value
      end
    end

    if attributes.key?(:'name')
      self.name = attributes[:'name']
    end

    if attributes.key?(:'repository')
      self.repository = attributes[:'repository']
    end

    if attributes.key?(:'publication')
      self.publication = attributes[:'publication']
    end
  end
end

PulpContainerClient::ContainerContainerDistribution.class_eval do
  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `PulpContainerClient::ContainerContainerDistribution` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `PulpContainerClient::ContainerContainerDistribution`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'pulp_labels')
      if (value = attributes[:'pulp_labels']).is_a?(Hash)
        self.pulp_labels = value
      end
    end

    if attributes.key?(:'content_guard')
      self.content_guard = attributes[:'content_guard']
    end

    if attributes.key?(:'repository')
      self.repository = attributes[:'repository']
    end

    if attributes.key?(:'name')
      self.name = attributes[:'name']
    end

    if attributes.key?(:'hidden')
      self.hidden = attributes[:'hidden']
    # Monkey-patch here. The rest of the initializer is copied from the library code.
    #else
    #  self.hidden = false
    end

    if attributes.key?(:'base_path')
      self.base_path = attributes[:'base_path']
    end

    if attributes.key?(:'repository_version')
      self.repository_version = attributes[:'repository_version']
    end

    if attributes.key?(:'private')
      self.private = attributes[:'private']
    end

    if attributes.key?(:'description')
      self.description = attributes[:'description']
    end
  end
end

PulpOstreeClient::OstreeOstreeDistribution.class_eval do
  # Initializes the object
  # @param [Hash] attributes Model attributes in the form of hash
  def initialize(attributes = {})
    if (!attributes.is_a?(Hash))
      fail ArgumentError, "The input argument (attributes) must be a hash in `PulpOstreeClient::OstreeOstreeDistribution` initialize method"
    end

    # check to see if the attribute exists and convert string to symbol for hash key
    attributes = attributes.each_with_object({}) { |(k, v), h|
      if (!self.class.attribute_map.key?(k.to_sym))
        fail ArgumentError, "`#{k}` is not a valid attribute in `PulpOstreeClient::OstreeOstreeDistribution`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
      end
      h[k.to_sym] = v
    }

    if attributes.key?(:'base_path')
      self.base_path = attributes[:'base_path']
    end

    if attributes.key?(:'content_guard')
      self.content_guard = attributes[:'content_guard']
    end

    if attributes.key?(:'hidden')
      self.hidden = attributes[:'hidden']
    # Monkey-patch here. The rest of the initializer is copied from the library code.
    #else
    #  self.hidden = false
    end

    if attributes.key?(:'pulp_labels')
      if (value = attributes[:'pulp_labels']).is_a?(Hash)
        self.pulp_labels = value
      end
    end

    if attributes.key?(:'name')
      self.name = attributes[:'name']
    end

    if attributes.key?(:'repository')
      self.repository = attributes[:'repository']
    end

    if attributes.key?(:'repository_version')
      self.repository_version = attributes[:'repository_version']
    end
  end
end
