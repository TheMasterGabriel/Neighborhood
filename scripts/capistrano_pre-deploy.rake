namespace :neighborhood do
    desc 'Cleaning the Gemlock file of all platform-dependent gems'
    
    task :clean do
        run_locally do
            execute :ruby "./git/hooks/pre-commit"
        end
    end
end