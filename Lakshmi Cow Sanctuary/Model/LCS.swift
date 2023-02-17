//
//  LCS.swift
//  Lakshmi Cow Sanctuary
//
//  Created by Tanishq Babbar on 06/02/23.
//

import UIKit

struct LCS {
    
    static let leftimages = ["About Lakshmi Cow Sanctuary","Our beautiful Cows","Story of our family"]
    static let rifghtImages = ["About founder Dr. Sastry","Our other family creatures","To subscribe to our newsletter"]
    
    static let imagesOnHome: [[UIImage]] = [[UIImage(imageLiteralResourceName: "lcs"),
                                             UIImage(imageLiteralResourceName: "one")],
                                            [UIImage(imageLiteralResourceName: "four"),
                                             UIImage(imageLiteralResourceName: "DMS")],
                                            [UIImage(imageLiteralResourceName: "two"),
                                             UIImage(imageLiteralResourceName: "five")]]
    
    static let textOnHomeForMenu: [String] = ["LCS Home",
                                              "About Lakshmi Cow Sanctuary",
                                              "About founder Dr. Sastry",
                                              "Our beautiful Cows",
                                              "Our other family creatures",
                                              "Story of our family",
                                              "To subscribe to our newsletter"]
    
    static let textOnHome: [[String]] = [["About Lakshmi Cow Sanctuary", "About founder Dr. Sastry"],
                                         ["Our beautiful Cows","Our other family creatures"],
                                         ["Story of our family","To subscribe to our newsletter"]]
    
    static let imagesOfCows: [[UIImage]] = [[UIImage(imageLiteralResourceName: "Krishna"), UIImage(imageLiteralResourceName: "Durga")],
                                            [UIImage(imageLiteralResourceName: "Yogeshwari"), UIImage(imageLiteralResourceName: "Sri")],
                                            [UIImage(imageLiteralResourceName: "Shiva"), UIImage(imageLiteralResourceName: "Sharada")],
                                            [UIImage(imageLiteralResourceName: "Sharada2"), UIImage(imageLiteralResourceName: "Panda")],
                                            [UIImage(imageLiteralResourceName: "Kamdhenu"), UIImage(imageLiteralResourceName: "Surabhi")],
                                            [UIImage(imageLiteralResourceName: "Maruthi"), UIImage(imageLiteralResourceName: "Hari")],
                                            [UIImage(imageLiteralResourceName: "Bobby"), UIImage(imageLiteralResourceName: "Bharathi")],
                                            [UIImage(imageLiteralResourceName: "Balaram"), UIImage(imageLiteralResourceName: "Krishna2")],
                                            [UIImage(imageLiteralResourceName: "Meera"), UIImage(imageLiteralResourceName: "Lalitha")],
                                            [UIImage(imageLiteralResourceName: "Muruga"), UIImage(imageLiteralResourceName: "Pandu")],
                                            [UIImage(imageLiteralResourceName: "Nandini"), UIImage()]]
    
    static let imagesSep: [UIImage] = [UIImage(imageLiteralResourceName: "Krishna"), UIImage(imageLiteralResourceName: "Durga"),
                                             UIImage(imageLiteralResourceName: "Yogeshwari"), UIImage(imageLiteralResourceName: "Sri"),
                                             UIImage(imageLiteralResourceName: "Shiva"), UIImage(imageLiteralResourceName: "Sharada"),
                                             UIImage(imageLiteralResourceName: "Sharada2"), UIImage(imageLiteralResourceName: "Panda"),
                                             UIImage(imageLiteralResourceName: "Kamdhenu"), UIImage(imageLiteralResourceName: "Surabhi"),
                                             UIImage(imageLiteralResourceName: "Maruthi"), UIImage(imageLiteralResourceName: "Hari"),
                                             UIImage(imageLiteralResourceName: "Bobby"), UIImage(imageLiteralResourceName: "Bharathi"),
                                             UIImage(imageLiteralResourceName: "Balaram"), UIImage(imageLiteralResourceName: "Krishna2"),
                                             UIImage(imageLiteralResourceName: "Meera"), UIImage(imageLiteralResourceName: "Lalitha"),
                                             UIImage(imageLiteralResourceName: "Muruga"), UIImage(imageLiteralResourceName: "Pandu"),
                                             UIImage(imageLiteralResourceName: "Nandini"), UIImage(imageLiteralResourceName: "Varaahi")]
    
    static let cowNames: [[String]] = [["Kooky Krishna", "Daring Durga"],
                                       ["Young Yogeshwari", "Shy Sri"],
                                       ["Self-reliant Shiva", "Soft Sharada"],
                                       ["Sharp Sharada", "Polite Panda"],
                                       ["Keen Kamadenu", "Self Surabhi"],
                                       ["Mischievous Maruthi", "Hungry Hari"],
                                       ["Bubby Bobby", "Breathtaking Bharathi"],
                                       ["Brilliant Balaram", "Kind Krishna"],
                                       ["Magical Meera", "Loving Lalitha"],
                                       ["Magestic Murga", "Patient Pandu"],
                                       ["Naughty but nice Nandini", ""]]
    
    static let otherImages: [[UIImage]] = [[UIImage(imageLiteralResourceName: "Michael"), UIImage(imageLiteralResourceName: "Radha")],
                                           [UIImage(imageLiteralResourceName: "Lalitha"), UIImage(imageLiteralResourceName: "Varaahi")],
                                           [UIImage(imageLiteralResourceName: "DMS"), UIImage()]]
                                           
    
    static let otherNames: [[String]] = [["Moving Michael Jackson", "Rocking Radha"],
                                         ["Loving Lalitha", "Varaahi"],
                                         ["Devi Muruga and Skanda", ""]]
    
    static let namesForStory: [String] = ["Krishna", "Durga", "Yogeshwari", "Sri", "Shiva", "Sharada", "Sharada 2",
                                             "Panda", "Kamadenu", "Surabhi", "Maruthi", "Hari", "Bobby", "Bharathi", "Balaram",
                                             "Krishna 2", "Meera", "Lalitha", "Muruga", "Pandu", "Nandini", "Varaahi"]
    
    static let stories: [String] = [
    """
    Krishna is a Jersey breed, was saved by a high school student. This young girl treated him with a lot of love and compassion. When he was 10 years old, she couldn't take care of him and brought to the sanctuary.
    He is also 17 years old. He is the Number 2 in a pecking order.
    """,
    """
    She is a Texas longhorn. Durga was also rescued by an American. She was born in a sanctuary to a sister of Sharada. She is now, like her name, very assertive. She is number 3 on her picking her. She has a skin color of a lioness reminding us of Goddess Durga.
    """,
    """
    She is Dutch Holstein
    She had appendicitis when she was little. Owner was going to send it to slaughter house. After she came to the sanctuary, we gave her milk in the bottle. Now she has grown as one of the tallest cow in the sanctuary with beautiful tail looking like a young and lovely lady.
    """,
    """
    Sri was brought up by a lady who was 80 yrs old in NJ. When Sri was 2 years old her husband dies. And 2 weeks later the lady had to sell her because she was diagnosed with cancer. she is a Scottish highlander breed. Sri is very beautiful with eyes resembling a rare gem. She is very friendly but a loner like a Rishi.
    """,
    """
    Shiva is the leader of the gang. When he was raised as a baby, a young lady found it difficult to handle him so she brought him to the sanctuary when he was 2 years. Since then he has been here and is the oldest cow.
    He is a Heraford. True to his name he is very big and strong. He is the biggest cow.
    """,
    """
    Sharada is a Texas longhorn and she is a cousin of Durga. She was rescued by one American and he rescued the whole family of Sharada which includes her mother, grand mother. She couldn't take care of her anymore so brought her to the sanctuary. Sharada have birth to a still horn baby. She has been with us for the last 12 years.
    """,
    """
    She was the first cow born in Sringeri Peetham in Stroudsburg. So they named her after Goddess Sharada Devi. She has a beautiful black color skin. Temple sent her here as she couldn't get pregnant. She is a Dutch Holstein
    """,
    """
    Panda was rescued from a neighborhood farm. The landlord raised the rent of the farm by 300% so the lady had to bring Panda along with six other cows to save their lives. Panda is a black angers cow. With a big black circle around his eyes, a true advertisement for the Target store.
    """,
    """
    Kamadenu was rescued as a baby from a neighborhood farm. She was rescued as a baby and we fed her with milk bottles. She has grown to be a beautiful cow and she has attended many temple functions. She has a beautiful tilak on her face. She is very loving, true to her name of the celestial cow.
    """,
    """
    Surabhi also came from Krishna mandir, morganville. She is a jersey cow.
    She is very friendly and runs to see us when we call her name. She was sent to the sanctuary because she was infertile.
    """,
    """
    Maruti came from the Sharada Mandir. He is a Dutch Holstein. True to his name, Maruti always jumps out of the fence and runs around. We have to always keep an eye on him to make sure he is safe.
    """,
    """
    Hari was born to Parvati who was brought by a lady who was getting a divorce. Parvati and Hari were loving. Unfortunately Parvati died. Hari is beautiful and friendly. He is a Jersey breed.
    """,
    """
    Bobby also came from the neighborhood farm and he is the patriarchs of the black angers cows here. He is very unassuming.
    """,
    """
    Bharati came from Sharada Mandir. She is a prize winning pure breed Holstein cow. She looks like a queen. She is beautiful and pleasant to everybody. The temple sent her here as her milk production went down.
    """,
    """
    Balaram is a Jersey breed. He was sent by Maharshri Mahesh yogi ashram in Catskill, as they didn't want to have a male cow. They used to call him talaram because he was very tender. After he came to this sanctuary, he became very strong and started chasing other cows so we renamed him Balaram.
    """,
    """
    Krishna was born here and has spent time as a baby in Sharada Mandir.
    Sharada Mandir needed milk for Abhishekam and we sent Krishna and his mother Lalitha to the temple for one year. True to his name, he is all black and loving.
    """,
    """
    Meera is a sister of Lalitha, who came from the neighborhood farm. Both Lalitha and Meera resemble each other like twins. Meera is quite and friendly.
    """,
    """
    Lalitha, mother of Krishna, spent time at Sharada Mandir for 2 years to give milk to the temple. Now she is back with us. She was rescued from a neighborhood farm where the owner had to send the cows here as the rent of the farm was raised by 300%. Lalitha is a very calming cow always supporting her son Krishna. She is a metriarch of the sanctuary.
    """,
    """
    Muruga also came from a neighborhood farm. Murga was born to a sister of Lalitha in Sharada Mandir. Unfortunately during childbirth she died and Muruga was left motherless and he came to the sanctuary when he was 3 months old. We have been taking care of him ever since.
    He is the youngest among all the cows here at the sanctuary.
    """,
    """
    Pandu came from a neighborhood farm and is a twin brother of Panda.
    """,
    """
    Nandini came along with Yogeshwari from a neighborhood farm. They sold it to us because she was infertile. Nandini is very mild mannered and is beautiful with a big heart in her face. She is very loving.
    """,
    """
    Varahi is a mini pig and was brought to the sanctuary by a nurse who had her as a pet in an apartment. As Varahi got bigger, she couldn't manage, so brought it to us. Varahi is very friendly and very intelligent. She makes noise similar to Samaveda sound.
    """
    ]
    
    let aboutLCS: String = """
                                Welcome to Lakshmi Cow Sanctuary
                                We are glad you downloaded this app and we are sure you will love it.
                                Lakshmi Cow Sanctuary was started by Dr. Sankar Sastri more than two decades ago with one mission - love for animals and caring for their well being!!
                                We are family to several cows, chickens, hens, pigs and more and we are in Stroudsburg, PA.
                                Our address is 163 Possinger Dr, Stroudsburg, PA 18360
                                Our email address is lakshmicows@gmail.com
                                Our phone number is \(K.cell)
                                For any contributions you may Paypal to \(K.email)
                           """
    let aboutSastri: String = """
                                Dr. Sankar Sastri (late), was a retired engineering professor.
                                Since his retirement, Dr. Sastri has dedicated his life to serving and protecting the residents of Lakshmi Cow Sanctuary. He formed the sanctuary and set of volunteers are expanding his vision after we lost him in November of 2021.
                           """
    
    
}
