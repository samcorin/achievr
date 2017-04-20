module DashboardsHelper
  def days_passed
    ( ( (Time.now - @user.created_at) / 1.day) + 1).round
  end

  def eq_module1
    questions = [
      "How’s it going? How do you feel in your new job?",
      "What are you enjoying most about your role?",
      "Is the job/team/company what you expected?",
      "Has anything surprised you? If so, what?",
      "Has training been helpful? What would you add or change?",
      "Do you have all the tools and resources that you need?",
      "Do you feel like you have gotten to know your coworkers well?",
      "Do you feel out of the loop about anything?",
      "What should we provide to new employees that we have missed?",
      "What is working/what is not working?",
      "Is anything about your role, the team or company still unclear?",
      "How can I be a better manager to you?",
      "As your manager, what can I do to make your transition easier?"
    ]

    questions.sample
  end

end
