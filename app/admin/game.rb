ActiveAdmin.register Game do

  permit_params :title, :size, :dvd, :description, :video_url, :genre_ids, :languaje_ids

  form do |f|
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
    end

    f.actions
  end
end
