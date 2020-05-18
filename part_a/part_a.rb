class CodeClanStudent

    attr_accessor :name, :cohort

    def initialize(name, cohort)
        @name = name
        @cohort = cohort
    end

    def student_talks(quote)
        return quote
    end

    def declare_favourite_language(language)
        return "I love #{language}"
    end

end