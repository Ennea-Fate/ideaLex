module MultimediaHelper
    def detect_file_type(file_name)
        video = ['mp4','avi','flv','webm','ogg','mpg','mpeg','wmv','mov','swf']
        audio = ['mid', 'midi', 'wma','aac','wav','mp3']
        image = ['jpeg', 'gif', 'png','apng','svg','bmp']
        if (video.include?(File.extname(file_name).delete_prefix('.')))
            return 1
        elsif (image.include?(File.extname(file_name).delete_prefix('.')))
            return 2
        else
            return 3
        end
    end

    def decode_file_type(kindof)
        case kindof
        when 1
            return 'Видео'
        when 2
            return 'Изображение'
        when 3
            return 'Аудио'
        end
    end
end
