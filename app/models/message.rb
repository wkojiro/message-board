class Message < ActiveRecord::Base
    #名前は入力必須　且つ　20文字以内
    validates :name , length:{ maximum: 20} ,presence:true
    
    #年齢は入力必須　且つ　数字のみ　100歳以下
    validates :age , inclusion: { in: 0..120 } ,presence:true , numericality: true
    
    #内容は入力必須　且つ　2文字以上30文字以下
    validates :body , length:{minimum:2 , maximum: 30},presence:true
end