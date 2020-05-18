class CodeClanStudent

    # attr_reader :name :cohort
    # attr_writer :name

    def initialize(name, cohort)
        @name = name
        @cohort = cohort
    end

    def name()
        return @name
    end

    def cohort()
        return @cohort
    end

    def change_name(new_name)
        return @name = new_name
    end

    def change_cohort(new_cohort)
        return @cohort = new_cohort
    end

    def student_talks(quote)
        return quote
    end

end