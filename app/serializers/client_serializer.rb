class ClientSerializer < ActiveModel::Serializer
  attributes :id, :telefono, :nombre, :direccion, :numero_visita
end
