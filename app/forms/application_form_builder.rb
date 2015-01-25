# FormBuilderの基底クラス
class ApplicationFormBuilder < ActionView::Helpers::FormBuilder

  def select_genders(options = {}, html_options = {})
    select :gender, [ [ 'male', 'male' ], [ 'fmale', 'fmale' ] ], options, html_options
  end

end
