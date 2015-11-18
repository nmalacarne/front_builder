module AdventuresHelper
  def link_to_add_fields(partial_name, copy, form, association)
    new_object = form.object.send(association).klass.new
    id = new_object.object_id
    fields = form.fields_for(association, new_object, child_index: id) do |builder|
      render(partial: partial_name, locals: {f: builder})
    end

    link_to(copy, '#', class: 'add-fields', data: {id: id, fields: fields.gsub('\n', '')})
  end
end
