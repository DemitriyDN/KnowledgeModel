class QuestionViewController < UIViewController
  def loadView
    self.view = QuestionView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    self.view.current_controller = self
  end

  def viewDidLoad
    # super
  end

  def get_answer
    answer_controller = AnswerController.alloc.init
    answer_controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal

    self.navigationController.presentModalViewController(answer_controller, animated:true)
  end

  def next_question
    questionViewController = QuestionViewController.alloc.init
    self.navigationController.pushViewController(questionViewController, animated:true)
  end
end
