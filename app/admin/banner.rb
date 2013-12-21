ActiveAdmin.register Banner do

  permit_params :title, :caption, :photo

  form(html: { multipart: true }) do |f|
    f.inputs "Datos" do
      f.input :title
      f.input :caption
      f.input :photo, as: :file
    end

    f.actions
  end
end
