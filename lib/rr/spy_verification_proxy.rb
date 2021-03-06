module RR
  class SpyVerificationProxy < BlankSlate
    def initialize(subject)
      @subject = subject
    end
  
    def method_missing(method_name, *args, &block)
      SpyVerification.new(@subject, method_name, args)
    end  
  end
end