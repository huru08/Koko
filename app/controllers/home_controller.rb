class HomeController < ApplicationController

  def top 
    @articles = Article.all.order(created_at: :desc).page(params[:page]).per(8)
   @infos = Info.all.order(created_at: :desc)
   if user_signed_in?
     @user = User.find(current_user.id)
   end
end

def koko
end

def fortune
  @telling = [{title: "晴天の下へ", body: "一番明るい空の下で深呼吸をせよ", under:"幸運があなたを迎えにくることでしょう。", pic: 0},
  {title: "雲を見つめよ", body: "上を見て歩きなさい、", under:"立ちはだかる壁を越える手助けとなるでしょう。", pic: 1},
  {title: "友を観察せよ", body: "近き者に目を向けよ", under:"懐かしい記憶があなたを少し前へ導く事でしょう。", pic: 2},
  {title: "家族と向き合え", body: "気をつかうな、", under:"あなたの味方が最も近くにいることに気づくことでしょう。", pic: 3},
  {title: "よく笑え", body: "笑う角には福来たる、", under:"上を向くものには待人来たる。", pic: 4}]

  @telling2 = [{title: "晴天の下へ", body: "一番明るい空の下で深呼吸をせよ", under:"幸運があなたを迎えにくることでしょう。", pic: 0},
  {title: "雲を見つめよ", body: "上を見て歩きなさい、", under:"立ちはだかる壁を越える手助けとなるでしょう。", pic: 1},
  {title: "友を観察せよ", body: "近き者に目を向けよ", under:"懐かしい記憶があなたを少し前へ導く事でしょう。", pic: 2},
  {title: "家族と向き合え", body: "気をつかうな、", under:"あなたの味方が最も近くにいることに気づくことでしょう。", pic: 3},
  {title: "よく笑え", body: "笑う角には福来たる、", under:"上を向くものには待人来たる。", pic: 4}]

@randam = @telling.sample[:pic]
@randam2 = @telling2.sample[:pic]

  @picture = @randam + @randam2

end



def plus 
  @articles = Article.all.order(created_at: :desc).page(params[:page]).per(8)
 @infos = Info.all.order(created_at: :desc)
 if user_signed_in?
   @user = User.find(current_user.id)
 end
end



end