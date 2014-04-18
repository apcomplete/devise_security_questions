Warden::Manager.after_authentication do |record, warden, options|
  scope = options[:scope]

  if record && record.respond_to?(:security_question_authenticatable?)
    warden.session(scope)[:need_security_question_authentication] = true
  end

end
