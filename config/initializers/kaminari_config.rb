# frozen_string_literal: true
Kaminari.configure do |config|
  #ページあたりの表示件数
  # config.default_per_page = 25
  #ページあたりの表示件数の最大
  # config.max_per_page = nil
  #現在ページから左右に何ページ分のリンクを生成するかの設定
  # config.window = 4
  #PrevとNextから何ページ分リンク生成するかの設定、以下のleft、rightを指定した場合はそちらが優先されます
  # config.outer_window = 0
  #Prevから何ページ分リンクを生成するかの設定
  # config.left = 0
  #Nextから何ページ分リンクを生成するかの設定
  # config.right = 0
  #モデルに追加されるページ番号を指定するスコープ名
  # config.page_method_name = :page
  #ページ番号を渡すためのリクエストパラメーター
  # config.param_name = :page
  # config.params_on_first_page = false
end
