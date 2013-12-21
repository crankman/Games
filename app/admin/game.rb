ActiveAdmin.register Game do

  permit_params :title, :size, :dvd, :description, :video_url, :portada, :captura

  form(html: { multipart: true }) do |f|
    f.inputs "Ficha tecnica" do
      f.input :title
      f.input :description
      f.input :size
      f.input :dvd
      f.input :genres, as: :check_boxes
      f.input :languajes, as: :check_boxes
    end
    f.inputs "Adjuntos" do
      f.input :video_url
      f.input :portada, as: :file
      f.input :captura, as: :file
    end

    f.actions
  end
end
