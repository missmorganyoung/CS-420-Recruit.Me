//  RecruitMe mobile app
//  Created by Morgan Young
//  Person

import SwiftUI

struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    
    var name: String
    var job: String
    var company: String
    var almaMater: String
    var imageURLS: [URL]
    var bio: String
    var distance: String
    
    var bioLong: String

    
    // Used for card manipulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
}

extension Person {
    static let example = Person(
        name: "Alena",
        job: "University Recruiter",
        company: "Meta",
        almaMater: "UCLA",
        imageURLS: [
            URL(string: "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80")!
        ],
        bio: "Recruiting entry-level SWE Interns for Meta University.",
        distance: "Los Angeles, CA",
        bioLong: "Hey there, I'm Alena! I'm curently sourcing entry-level SWE Interns for Meta University. I'm originally from Los Angeles, and I went to UCLA where I studied Psychology. If you're a freshman/sophomore in Computer Science, with a knack for solving complex problems and a passion for building amazing things, swipe right and let's talk!"

    )
    
    static let example2 = Person(
        name: "John",
        job: "Technical Sourcer",
        company: "Google",
        almaMater: "UW",
        imageURLS: [
            URL(string: "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mjh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60")!],
        bio: "Sourcing UX Design Interns for Google.",
        distance: "Seattle, WA",
        bioLong: "Hi I'm John. I'm curently sourcing UX Design Interns for Google. I'm originally from Oregon, and I went to UW where I studied Human Resources and Business. If you're majoring in Fine Arts, Design, Human-Computer Interaction or any major related to design or psychology, let's talk!"

    )
    
    static let example3 = Person(
        name: "John",
        job: "Technical Sourcer",
        company: "Google",
        almaMater: "UW",
        imageURLS: [
            URL(string: "https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mjh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60")!],
        bio: "Sourcing UX Design Interns for Google.",
        distance: "Seattle, WA",
        bioLong: "Hi I'm John. I'm curently sourcing UX Design Interns for Google. I'm originally from Oregon, and I went to UW where I studied Human Resources and Business. If you're majoring in Fine Arts, Design, Human-Computer Interaction or any major related to design or psychology, let's talk!"

    )
    
    static let examples: [Person] = [
        
        Person.example,
        Person.example2,
        Person(
            name: "Alena",
            job: "University Recruiter",
            company: "Meta",
            almaMater: "UCLA",
            imageURLS: [
                URL(string: "https://static.wixstatic.com/media/3fd3c0_11c3ec5beb344941a3c2d63efea73b32~mv2.png/v1/fill/w_610,h_918,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/1.png")!
            ],
            bio: "Recruiting entry-level SWE Interns for Meta University.",
            distance: "Los Angeles, CA",
            bioLong: "Hey there, I'm Alena! I'm curently sourcing entry-level SWE Interns for Meta University. I'm originally from Los Angeles, and I went to UCLA where I studied Psychology. If you're a freshman/sophomore in Computer Science, with a knack for solving complex problems and a passion for building amazing things, swipe right and let's talk!"

        ),
        Person(
            name: "John",
            job: "Technical Sourcer",
            company: "Google",
            almaMater: "UW",
            imageURLS: [
                URL(string: "https://static.wixstatic.com/media/3fd3c0_dcbbadcc898b4b6cafb3ec0f0c7799b5~mv2.png/v1/fill/w_610,h_918,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/2.png")!
            ],
            bio: "Sourcing UX Design Interns for Google.",
            distance: "Seattle, WA",
            bioLong: "Hi I'm John. I'm curently sourcing UX Design Interns for Google. I'm originally from Oregon, and I went to UW where I studied Human Resources and Business. If you're majoring in Fine Arts, Design, Human-Computer Interaction or any major related to design or psychology, let's talk!"

        ),
        Person(
            name: "Sophie",
            job: "Recruiting Manager",
            company: "Workrise",
            almaMater: "UT Austin",
            imageURLS: [
                URL(string: "https://static.wixstatic.com/media/3fd3c0_a75795a091c743a0bcd7e69fca89003c~mv2.png/v1/fill/w_610,h_918,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/3.png")!
            ],
            bio: "Recruiting SWE interns for a Series E startup.",
            distance: "Austin, TX",
            bioLong: "Hi I'm John. I'm curently sourcing SWE interns for a Series E startup, called Workrise. I've lived in ATX my whole life, and I went to UT Austin where I studied Sociology and History. If you're a CS-related major with experience in networking and an interest in the energy sector, swipe right and let's chat!"
            
        ),
        Person(
            name: "Will",
            job: "Recruitment Coordinator",
            company: "JP Morgan Chase & Co.",
            almaMater: "Binghamton University",
            imageURLS: [
                URL(string: "https://static.wixstatic.com/media/3fd3c0_1bc83205afd744d5aaf96a6c6be34b26~mv2.png/v1/fill/w_610,h_918,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/4.png")!
            ],
            bio: "Seeking Business Analytics interns for JP Morgan Chase & Co.",
            distance: "New York, NY",
            bioLong: "Seeking Business Analytics interns for JP Morgan Chase & Co's newer FinTech division. Doing a lot of innovation in this space, so looking for imaginative, fresh minds. We're also looking for non-traditional backgrounds, so we're agnostic as far as candidate profiles. If you're interested in business analytics and have an interest and skills for business analytics, we'd be more than happy to have you."
            
        ),
        
        Person(
            name: "Rachel",
            job: "Talent Acquisition Specialist",
            company: "Atmosfy",
            almaMater: "University of San Diego",
            imageURLS: [
                URL(string: "https://static.wixstatic.com/media/3fd3c0_545fd1d9f2bd491581fe951d2963d723~mv2.png/v1/fill/w_610,h_918,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/5.png")!
            ],
            bio: "Sourcing Product Marketing interns for a Series B startup.",
            distance: "San Diego, CA",
            bioLong: "Sourcing Product Marketing interns for a Series B startup, called Atmosfy. We're a pretty young startup and we're trying to build our workforce up. We're open to candidates of all backgrounds, but we definitely want someone with experience, ex. previous internships in Marketing. Having some sort of tech or cs background would also be ideal."
            
        )
        
        
    ]
        
}
