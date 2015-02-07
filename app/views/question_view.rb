class QuestionView < UIView
  attr_accessor :current_controller

  def initWithFrame(frame)
    super.tap do
      self.styleId = 'question_view'

      addSubview( StartView.alloc.initWithFrame(
        [
          [20, 30],
          [self.frame.size.width - 40 , self.frame.size.height - 95]
        ]
      ))

      self.addSubview( answer_btn )
      self.addSubview( next_question_btn )
    end
  end

  def answer_btn
    @answer_btn ||= UIButton.buttonWithType(UIButtonTypeCustom).tap do |button|
      button.frame = [
        [20, self.frame.size.height - 55],
        [100, 40]
      ]

      button.setTitle('Ответ', forState: UIControlStateNormal)
      button.styleClass = 'btn'
      button.styleId = 'answer_btn'

      button.addTarget(current_controller, action: 'get_answer', forControlEvents: UIControlEventTouchUpInside)
    end
  end

  def next_question_btn
    @next_question_btn ||= UIButton.buttonWithType(UIButtonTypeCustom).tap do |button|
      button.frame = [
        [20 + @answer_btn.frame.size.width + 15, self.frame.size.height - 55],
        [220, 40]
      ]

      button.setTitle('Вопрос', forState: UIControlStateNormal)
      button.styleClass = 'btn'
      button.styleId = 'next_question_btn'

      button.addTarget(current_controller, action: 'next_question', forControlEvents: UIControlEventTouchUpInside)
    end
  end
end
