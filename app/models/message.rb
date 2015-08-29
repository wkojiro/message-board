class Message < ActiveRecord::Base
    #名前は入力必須　且つ　20文字以内
    validates :name , length:{ maximum: 20} ,presence:true
    #内容は入力必須　且つ　2文字以上30文字以
    validates :body , length:{minimum:2 , maximum: 30},presence:true
end
