<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shutterstock Careers Page Clone</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        /* Custom class for responsive video container */
        .video-responsive {
            position: relative;
            padding-bottom: 56.25%; /* 16:9 aspect ratio */
            height: 0;
            overflow: hidden;
            max-width: 100%;
        }
        .video-responsive iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body class="bg-white">

<div class="bg-gray-700 text-white p-3 md:p-4 flex flex-col md:flex-row items-center justify-center">
    <div class="text-sm md:text-base mr-4 max-w-4xl text-center md:text-left mb-3 md:mb-0">
        We use cookies to offer you a better browsing experience, analyze site traffic, and personalize content. Read about how we use cookies and how you can control them by visiting our
        <a href="#" class="underline hover:text-orange-300">Cookie Settings</a> page.
    </div>

    <div class="flex space-x-3">
        <button class="bg-red-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded-md shadow-lg transition-colors flex items-center justify-center text-sm">
            <span class="mr-1">×</span> Deny
        </button>
        <button class="bg-orange-500 hover:bg-orange-600 text-white font-semibold py-2 px-4 rounded-md shadow-lg transition-colors text-sm">
            Allow
        </button>
    </div>
</div>

<header class="bg-black py-5 px-6 flex flex-col md:flex-row items-center justify-between space-y-4 md:space-y-0">
    <a href="#" class="text-white text-3xl font-sans font-bold">
        <img src="images/image5.jpg" 
            alt="Shutterstock Logo" 
            class="h-24 w-auto">
    </a>

    <div class="flex-grow max-w-xl md:mx-8 w-full md:w-auto order-3 md:order-2">
        <input
            type="text"
            placeholder="Enter Job Title or Location"
            class="w-full p-3 rounded-md border-0 focus:ring-2 focus:ring-orange-500 focus:outline-none text-gray-800 shadow-inner"
        >
    </div>

    <a href="#" class="text-white text-sm flex items-center hover:text-orange-500 transition-colors order-2 md:order-3">
        <span class="mr-1">♡</span> Saved Jobs (0)
    </a>
</header>

<nav class="bg-white border-b border-gray-200 py-3 px-6 shadow-sm hidden lg:block">
    <ul class="flex space-x-6 text-sm font-medium text-gray-700 max-w-6xl mx-auto">
        <li><a href="#" class="hover:text-orange-500 transition-colors">Browse Jobs</a></li>
        <li><a href="#" class="hover:text-orange-500 transition-colors">Careers Home</a></li>
        <li><a href="#" class="hover:text-orange-500 transition-colors">Our Culture</a></li>
        <li><a href="#" class="hover:text-orange-500 transition-colors">Our Locations</a></li>
        <li><a href="#" class="hover:text-orange-500 transition-colors">Engagement Community and Impact</a></li>
        <li><a href="#" class="hover:text-orange-500 transition-colors">Candidate Home</a></li>
    </ul>
</nav>

<div class="bg-black">
    <div class="max-w-4xl mx-auto py-24 px-6 md:px-12 text-white">

        <h1 class="text-6xl md:text-7xl font-bold leading-tight">
            Join us in building what's next
        </h1>

        <p class="text-xl md:text-2xl mt-8 mb-10 max-w-2xl font-light">
            We're not just imagining the future of creativity—we're building it.
            Join a culture that celebrates bold thinking and big ideas.
        </p>

        <a
            href="#"
            class="inline-block bg-red-500 hover:bg-red-600 text-white font-semibold py-3 px-8 rounded transition-colors shadow-lg transform hover:scale-105 duration-300"
        >
            View all jobs
        </a>
        
    </div>
</div>

<div class="bg-white py-20 px-6 md:px-12">

    <div class="max-w-6xl mx-auto flex flex-wrap justify-center items-center gap-y-8 md:gap-x-8">

        <div class="w-1/3 md:w-1/6 flex justify-center">
            <img src="images/image7.png" 
                alt="Envato Logo" 
                onerror="this.onerror=null; this.src='https://placehold.co/150x30/23d47c/ffffff?text=ENVATO';"
                class="h-200 md:h-200 opacity-80 hover:opacity-100 transition-opacity">
        </div>

        <div class="w-1/3 md:w-1/6 flex justify-center relative pt-4 md:pt-0">
            <img src="images/image8.jpg" 
                alt="Turbosquid by Shutterstock"
                onerror="this.onerror=null; this.src='https://placehold.co/150x30/FF6600/FFFFFF?text=TURBOSQUID';"
                class="h-200 md:h-200">
            <span class="absolute bottom-[-1.5rem] text-xs text-gray-500 font-light whitespace-nowrap"></span>
        </div>

        <div class="w-1/3 md:w-1/6 flex justify-center relative pt-4 md:pt-0">
            <img src="images/image9.jpg" 
                alt="PremiumBeat by Shutterstock"
                onerror="this.onerror=null; this.src='https://placehold.co/150x30/FFD700/000000?text=PREMIUM+BEAT';"
                class="h-200 md:h-200">
            <span class="absolute bottom-[-1.5rem] text-xs text-gray-500 font-light whitespace-nowrap"></span>
        </div>

        <div class="w-1/3 md:w-1/6 flex justify-center relative pt-4 md:pt-0">
            <img src="images/image10.png" 
                alt="Pond5 by Shutterstock" 
                onerror="this.onerror=null; this.src='https://placehold.co/150x30/333333/FFFFFF?text=POND5';"
                class="h-200 md:h-200">
            <span class="absolute bottom-[-1.5rem] text-xs text-gray-500 font-light whitespace-nowrap"></span>
        </div>

        <div class="w-1/3 md:w-1/6 flex justify-center relative pt-4 md:pt-0">
            <img src="images/image11.jpg" 
                alt="New Asset by Shutterstock"
                onerror="this.onerror=null; this.src='https://placehold.co/150x30/9400D3/FFFFFF?text=NEW+ASSET';"
                class="h-200 md:h-200">
            <span class="absolute bottom-[-1.5rem] text-xs text-gray-500 font-light whitespace-nowrap"></span>
        </div>

    </div>

    <div class="pt-24 pb-12"> </div>

    <div class="max-w-4xl mx-auto text-center">

        <h2 class="text-5xl md:text-6xl font-bold text-gray-900 mb-6">
            Why us?
        </h2>

        <p class="text-lg md:text-xl text-gray-700 max-w-3xl mx-auto leading-relaxed">
            From AI to original production, we give creatives what they need to think bigger and make faster.
            We back vision with smart tools, smarter teammates, and room to run. If you're ready to build the next big thing, you're in the right place.
        </p>

    </div>
    
    <div class="bg-black mt-12 mx-auto max-w-7xl rounded-lg shadow-2xl">
        <div class="video-responsive">
            <iframe 
                src="https://www.youtube.com/embed/ggCvPDVwZIU?rel=0&amp;showinfo=0" 
                frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                allowfullscreen
            ></iframe>
        </div>
    </div>

</div>

    <div class="max-w-7xl mx-auto space-y-20">

        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-start">
            
            <div class="order-1 md:order-1">
                <img 
                    src="images/image12.jpg" 
                    alt="Shutterstock team photo of diverse employees"
                    class="w-full h-auto object-cover rounded-lg shadow-xl"
                >
            </div>
            
            <div class="order-2 md:order-2 self-center">
                <h3 class="text-4xl font-bold text-gray-900 mb-4">Our culture</h3>
                <p class="text-lg text-gray-700 mb-6 leading-relaxed">
                    We move fast, think ahead, and put people first. Headquartered in the Empire State Building, our hybrid company is home to a diverse team that creates impactful work—and has fun doing it.
                </p>
                <a href="#" class="inline-block border border-gray-400 text-gray-700 font-medium py-2 px-6 rounded hover:bg-gray-100 transition-colors">
                    Learn more
                </a>
            </div>


        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-start">
            
            <div class="order-2 md:order-1 self-center">
                <h3 class="text-4xl font-bold text-gray-900 mb-4">Our values</h3>
                <p class="text-lg text-gray-700 mb-6 leading-relaxed">
                    Five principles guide everything we do—from shaping how we foster our culture to empowering our customers and making decisions that move our company forward.
                </p>
                <a href="#" class="inline-block border border-gray-400 text-gray-700 font-medium py-2 px-6 rounded hover:bg-gray-100 transition-colors">
                    Learn more
                </a>
            </div>

            <div class="order-1 md:order-2">
                <img 
                    src="images/image13.jpg" 
                    alt="Illustration of hands assembling a colorful puzzle"
                    onerror="this.onerror=null; this.src='https://placehold.co/600x400/FF5733/FFFFFF?text=VALUES+PUZZLE';"
                    class="w-full h-auto object-cover rounded-lg shadow-xl"
                >
            </div>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-start">
            
            <div class="order-1 md:order-1">
                <img 
                    src="images/image14.jpg" 
                    alt="Shutterstock team photo of diverse employees"
                    onerror="this.onerror=null; this.src='https://placehold.co/600x400/CCCCCC/333333?text=TEAM+CULTURE';"
                    class="w-full h-auto object-cover rounded-lg shadow-xl"
                >
            </div>
            
            <div class="order-2 md:order-2 self-center">
                <h3 class="text-4xl font-bold text-gray-900 mb-4">Our community</h3>
                <p class="text-lg text-gray-700 mb-6 leading-relaxed">
                    Different perspectives are our greatest strength.They reflect the global collective we serve, inform thoughtful choices made at every level, and help unlock what’s possible together
                </p>
                <a href="#" class="inline-block border border-gray-400 text-gray-700 font-medium py-2 px-6 rounded hover:bg-gray-100 transition-colors">
                    Learn more
                </a>
            </div>
            

        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-start">
            
            <div class="order-2 md:order-1 self-center">
                <h3 class="text-4xl font-bold text-gray-900 mb-4">Engagement, Community and Impact</h3>
                <p class="text-lg text-gray-700 mb-6 leading-relaxed">
                    We’re committed to giving back to the global communities we operate in through volunteerism, employee resource groups, and charitable giving.
                </p>
                <a href="#" class="inline-block border border-gray-400 text-gray-700 font-medium py-2 px-6 rounded hover:bg-gray-100 transition-colors">
                    Learn more
                </a>
            </div>

            <div class="order-1 md:order-2">
                <img 
                    src="images/image15.jpg" 
                    alt="Illustration of people doing community work"
                    onerror="this.onerror=null; this.src='https://placehold.co/600x400/FF5733/FFFFFF?text=COMMUNITY+IMPACT';"
                    class="w-full h-auto object-cover rounded-lg shadow-xl"
                >
            </div>
        </div>
        

    </div>
    <div class="bg-white py-20 px-6 md:px-12 border-t border-gray-100">
    <div class="max-w-7xl mx-auto text-center">
        <h3 class="text-4xl font-bold text-gray-900 mb-4">What we offer</h3>
        <p class="text-lg text-gray-700 max-w-3xl mx-auto mb-16 leading-relaxed">
            We balance ambition with well-being. That's why we offer a benefits package 
            designed to promote physical, mental, and financial health.
        </p>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-y-16 gap-x-12 text-center">

            <div class="flex flex-col items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                </svg>
                <h4 class="text-xl font-semibold text-gray-900 mb-2">Flexibility</h4>
                <p class="text-base text-gray-600">
                    We offer a hybrid model that’s centered around flexibility and enabling collaboration, innovation, 
                    and accountability—no matter where we are.
                </p>
            </div>

            <div class="flex flex-col items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18ZM10.5 10.5H12V8.25m-1.5 6.75h3M12 18v-3.75" />
                    <circle cx="12" cy="12" r="9" stroke="currentColor" stroke-width="1.5"/>
                    <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 15.75A7.5 7.5 0 0 0 12 20.25a7.5 7.5 0 0 0 3.75-4.5" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 8.25A7.5 7.5 0 0 0 12 3.75a7.5 7.5 0 0 0-3.75 4.5" />
                </svg>
                <h4 class="text-xl font-semibold text-gray-900 mb-2">Connection</h4>
                <p class="text-base text-gray-600">
                    Whether online or on site, we make sure there are plenty of ways to connect and have fun.
                </p>
            </div>

            <div class="flex flex-col items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M11.48 3.499a.562.562 0 0 1 1.04 0l2.125 5.122a.5.5 0 0 0 .47.33l5.65.65c.472.054.605.626.244.976l-4.08 3.774a.5.5 0 0 0-.15.485l1.135 5.093c.105.47-.39.813-.773.578l-5.076-2.915a.5.5 0 0 0-.47 0l-5.076 2.915c-.383.235-.878-.108-.773-.578l1.135-5.093a.5.5 0 0 0-.15-.485L2.52 10.632c-.36-.35.034-.922.476-.976l5.65-.65a.5.5 0 0 0 .47-.33l2.125-5.122Z" />
                </svg>
                <h4 class="text-xl font-semibold text-gray-900 mb-2">Recognition</h4>
                <p class="text-base text-gray-600">
                    We never miss an opportunity to celebrate our achievements and commend great work through our global recognition program.
                </p>
            </div>

            <div class="flex flex-col items-center mt-12 md:mt-0">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6.346 17.514a3.3 3.3 0 0 0 4.194 0l3.08-2.618a3.75 3.75 0 0 0 1.258-2.812l-.022-2.316c-.054-.863-.642-1.574-1.5-1.782l-3.08-2.618a3.3 3.3 0 0 0-4.194 0l-3.08 2.618a3.75 3.75 0 0 0-1.258 2.812l.022 2.316c.054.863.642 1.574 1.5 1.782l3.08 2.618Z" />
                </svg>
                <h4 class="text-xl font-semibold text-gray-900 mb-2">Empowerment</h4>
                <p class="text-base text-gray-600">
                    We offer generous and competitive compensation packages, PTO, wellness initiatives, on-and-off working hours, tuition reimbursement, and an employee referral bonus.
                </p>
            </div>
            
            <div class="flex flex-col items-center mt-12 md:mt-0">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 17.25c-2.485 0-4.5-2.015-4.5-4.5s2.015-4.5 4.5-4.5 4.5 2.015 4.5 4.5-2.015 4.5-4.5 4.5Zm0 0v-9M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18Z" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M18.75 6.75h-1.5a4.5 4.5 0 0 0-4.5 4.5v1.5a4.5 4.5 0 0 0 4.5 4.5h1.5M5.25 6.75h1.5a4.5 4.5 0 0 1 4.5 4.5v1.5a4.5 4.5 0 0 1-4.5 4.5h-1.5" />
                </svg>
                <h4 class="text-xl font-semibold text-gray-900 mb-2">Growth</h4>
                <p class="text-base text-gray-600">
                    Our SkillUP Program lets you take ownership of your personal development through virtual learning offerings.
                </p>
            </div>
            
            <div class="flex flex-col items-center mt-12 md:mt-0">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18ZM10.5 10.5H12V8.25m-1.5 6.75h3M12 18v-3.75" />
                </svg>
                <h4 class="text-xl font-semibold text-gray-900 mb-2">Belonging</h4>
                <p class="text-base text-gray-600">
                    Our goal is to build a workforce that’s representative of the diverse global community we serve, and where all employees can come to work as their authentic selves.
                </p>
            </div>

        </div>

    </div>
</div>
<div class="bg-gray-50 py-20 px-6 md:px-12">
    <div class="max-w-7xl mx-auto text-center">
        
        <h3 class="text-4xl font-bold text-gray-900 mb-16">
            Become a part of our success
        </h3>

        <div class="grid grid-cols-2 md:grid-cols-4 gap-12 text-center">
            
            <div class="flex flex-col items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M3 16.5v2.25A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75V16.5M16.5 12 12 16.5m0 0-4.5-4.5M12 16.5V3" />
                </svg>
                <h4 class="text-3xl font-bold text-gray-900 mb-2">1+ billion</h4>
                <p class="text-base text-gray-600">
                    images, video clips, and music tracks downloaded
                </p>
            </div>

            <div class="flex flex-col items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 19.12c0-1.76-1.44-3.19-3.19-3.19h-.62c-1.75 0-3.19 1.43-3.19 3.19M12 9.38a3.19 3.19 0 1 0 0 6.38 3.19 3.19 0 0 0 0-6.38Z" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M17.86 16.89c.77-1.12 1.2-2.54 1.2-4.07 0-4.48-3.64-8.12-8.12-8.12S2.82 8.34 2.82 12.82c0 1.53.43 2.95 1.2 4.07M21 12.82c0-5.46-4.42-9.88-9.88-9.88S1.24 7.36 1.24 12.82c0 2.53.94 4.88 2.52 6.72M12 21.05V1.28M12 18.25c-2.48 0-4.5-2.02-4.5-4.5s2.02-4.5 4.5-4.5 4.5 2.02 4.5 4.5-2.02 4.5-4.5 4.5Z" clip-rule="evenodd" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 19.12c0-1.76-1.44-3.19-3.19-3.19h-.62c-1.75 0-3.19 1.43-3.19 3.19" />
                </svg>
                <h4 class="text-3xl font-bold text-gray-900 mb-2">1+ million</h4>
                <p class="text-base text-gray-600">
                    artists from around the world contribute their content
                </p>
            </div>

            <div class="flex flex-col items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m2.25 12.76 11.23-9.52M2.25 18 12 9.53V21m4.5-1.5c0-1.77-1.43-3.2-3.2-3.2h-.1c-1.77 0-3.2 1.43-3.2 3.2V21M17.43 5.57a.75.75 0 1 0 1.06 1.06l.89-.89a.75.75 0 0 0-.53-1.28L17.43 5.57ZM6.57 5.57a.75.75 0 1 0-1.06 1.06l-.89-.89a.75.75 0 0 0 .53-1.28l1.42 1.42ZM21 12.75H3" />
                </svg>
                <h4 class="text-3xl font-bold text-gray-900 mb-2">450+ million</h4>
                <p class="text-base text-gray-600">
                    high-quality photos, vectors, and illustrations in our leading library
                </p>
            </div>

            <div class="flex flex-col items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-10 h-10 text-gray-800 mb-4">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18ZM12 4.5v1.5M12 18v1.5M4.5 12h1.5M18 12h1.5M15.75 6.75l-1.06 1.06M8.25 15.75l-1.06 1.06M15.75 15.75l-1.06-1.06M8.25 6.75l-1.06-1.06" />
                </svg>
                <h4 class="text-3xl font-bold text-gray-900 mb-2">150+</h4>
                <p class="text-base text-gray-600">
                    countries use our site, which is available in 25 languages
                </p>
            </div>

        </div>

    </div>
</div>

<div class="bg-white py-20 px-6 md:px-12">
    <div class="max-w-7xl mx-auto text-center">
        <h2 class="text-4xl font-bold text-gray-900 mb-4">Joining our team</h2>
        <p class="text-lg text-gray-700 max-w-4xl mx-auto mb-16 leading-relaxed">
            We're always looking for creative, innovative and collaborative problem solvers. We also want 
            to make the hiring process as transparent as possible, so here's what to expect:
        </p>

        <div class="grid grid-cols-2 gap-y-10 md:grid-cols-6 gap-x-6 max-w-full mx-auto relative pt-10">

            <div class="hidden md:block absolute top-14 left-10 right-10 border-t border-gray-300 border-dashed"></div>

            <div class="flex flex-col items-center text-center col-span-1">
                <div class="relative flex flex-col items-center w-full">
                    <div class="w-10 h-10 flex items-center justify-center rounded-full bg-blue-100 border-4 border-white z-10 shadow-lg mb-4 text-blue-600 font-bold">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5"><path stroke-linecap="round" stroke-linejoin="round" d="M12 7.5c-1.556 0-3 1.12-3 2.5V14a.5.5 0 0 0 .5.5h6a.5.5 0 0 0 .5-.5V10c0-1.38-1.444-2.5-3-2.5ZM12 4.5c-3.5 0-6 2.5-6 5.5v4.5c0 2.25 1.5 4.5 6 4.5s6-2.25 6-4.5V10c0-3-2.5-5.5-6-5.5Z" /></svg>
                    </div>
                </div>
                <h4 class="text-lg font-semibold text-gray-900 mb-2">Step 1</h4>
                <p class="text-sm text-gray-600">
                    Browse our career site to learn more about Shutterstock’s culture and job opportunities.
                </p>
            </div>

            <div class="flex flex-col items-center text-center col-span-1">
                <div class="relative flex flex-col items-center w-full">
                    <div class="w-10 h-10 flex items-center justify-center rounded-full bg-blue-100 border-4 border-white z-10 shadow-lg mb-4 text-blue-600 font-bold">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5"><path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.5 16.5c0-1.2.9-2.25 2.25-2.25h10.5c1.35 0 2.25 1.05 2.25 2.25V18a1.5 1.5 0 0 1-1.5 1.5h-13.5A1.5 1.5 0 0 1 4.5 18v-1.5Z" /></svg>
                    </div>
                </div>
                <h4 class="text-lg font-semibold text-gray-900 mb-2">Step 2</h4>
                <p class="text-sm text-gray-600">
                    Once you’ve applied to an opportunity, make sure to create your candidate home for future Workday notifications.
                </p>
            </div>

            <div class="flex flex-col items-center text-center col-span-1">
                <div class="relative flex flex-col items-center w-full">
                    <div class="w-10 h-10 flex items-center justify-center rounded-full bg-blue-100 border-4 border-white z-10 shadow-lg mb-4 text-blue-600 font-bold">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5"><path stroke-linecap="round" stroke-linejoin="round" d="M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18ZM10.5 10.5H12V8.25m-1.5 6.75h3M12 18v-3.75" /></svg>
                    </div>
                </div>
                <h4 class="text-lg font-semibold text-gray-900 mb-2">Step 3</h4>
                <p class="text-sm text-gray-600">
                    If selected, a recruiter will schedule an initial screening.
                </p>
            </div>

            <div class="flex flex-col items-center text-center col-span-1">
                <div class="relative flex flex-col items-center w-full">
                    <div class="w-10 h-10 flex items-center justify-center rounded-full bg-blue-100 border-4 border-white z-10 shadow-lg mb-4 text-blue-600 font-bold">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5"><path stroke-linecap="round" stroke-linejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" /></svg>
                    </div>
                </div>
                <h4 class="text-lg font-semibold text-gray-900 mb-2">Step 4</h4>
                <p class="text-sm text-gray-600">
                    If selected to move forward, we will reach out to schedule a series of interviews depending on the position.
                </p>
            </div>

            <div class="flex flex-col items-center text-center col-span-1">
                <div class="relative flex flex-col items-center w-full">
                    <div class="w-10 h-10 flex items-center justify-center rounded-full bg-blue-100 border-4 border-white z-10 shadow-lg mb-4 text-blue-600 font-bold">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5"><path stroke-linecap="round" stroke-linejoin="round" d="M9 12.75 11.25 15 15 9.75M21 12c0 8.284-6.716 15-15 15S-3 12-3 12s6.716-15 15-15 15 6.716 15 15Z" /></svg>
                    </div>
                </div>
                <h4 class="text-lg font-semibold text-gray-900 mb-2">Step 5</h4>
                <p class="text-sm text-gray-600">
                    If selected for the role, your recruiter will reach out to extend the offer, which you can review and sign via your Workday Candidate Home.
                </p>
            </div>

            <div class="flex flex-col items-center text-center col-span-1">
                <div class="relative flex flex-col items-center w-full">
                    <div class="w-10 h-10 flex items-center justify-center rounded-full bg-blue-100 border-4 border-white z-10 shadow-lg mb-4 text-blue-600 font-bold">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-5 h-5"><path stroke-linecap="round" stroke-linejoin="round" d="M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" /></svg>
                    </div>
                </div>
                <h4 class="text-lg font-semibold text-gray-900 mb-2">Step 6</h4>
                <p class="text-sm text-gray-600">
                    Welcome to the Shutterstock team! Once the offer is signed, we'll start the onboarding process.
                </p>
            </div>

        </div>
    </div>
</div>

<div class="bg-white py-20 px-6 md:px-12">
    <div class="max-w-7xl mx-auto text-center">
        <h3 class="text-4xl font-bold text-gray-900 mb-4">Current opportunities</h3>
        <p class="text-lg text-gray-700 max-w-3xl mx-auto mb-16 leading-relaxed">
            Find a role in the area that best matches your experience and interests, 
            so you can do work that you love.
        </p>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 max-w-4xl mx-auto">
            
            <a href="#" class="flex justify-between items-center bg-white text-black p-4 rounded-lg shadow-lg hover:bg-orange-600 transition-colors hover:shadow-lg hover:text-white hover:border-red-700 border border-gray-300 transition-shadow">
                <span class="text-xl font-semibold">Technology (5)</span>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                </svg>
            </a>

            <a href="#" class="flex justify-between items-center bg-white border border-gray-300 text-gray-800 p-4 rounded-lg shadow-md hover:shadow-lg hover:border-gray-400 transition-shadow hover:bg-orange-600 hover:text-white">
                <span class="text-xl font-semibold">Product (1)</span>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                </svg>
            </a>
            
            <a href="#" class="flex justify-between items-center bg-white border border-gray-300 text-gray-800 p-4 rounded-lg shadow-md hover:shadow-lg hover:border-gray-400 transition-shadow hover:bg-orange-600 hover:text-white">
                <span class="text-xl font-semibold">Sales (3)</span>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                </svg>
            </a>

            <a href="#" class="flex justify-between items-center bg-white border border-gray-300 text-gray-800 p-4 rounded-lg shadow-md hover:shadow-lg hover:border-gray-400 transition-shadow hover:bg-orange-600 hover:text-white">
                <span class="text-xl font-semibold">User Experience (1)</span>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                </svg>
            </a>
            
            <a href="#" class="flex justify-between items-center bg-white border border-gray-300 text-gray-800 p-4 rounded-lg shadow-md hover:shadow-lg hover:border-gray-400 transition-shadow hover:bg-orange-600 hover:text-white">
                <span class="text-xl font-semibold">Other (2)</span>
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
                </svg>
            </a>

        </div>
    </div>

</div>

<div>
        <img 
            src="images/our-success.png" 
            alt="Shutterstock office building exterior at sunset"
            class="w-full h-auto object-cover"
        >
</div>

<div class="mb-10">
        <img
            src="images/our-team.png"
            alt="Shutterstock diverse team of employees working together"
            class="w-full h-auto object-cover">
</div>

<div class="mb-5 mt-15">

<?php include 'slideAni.php'; ?>

</div>

<div class="mt-5 bg-cover bg-center h-60" style="background-image: url('images/BG.jpg');">
        <h1 class="text-4xl font-bold text-white text-center pt-20">Stay Connected</h1>

        <h3 class="text-lg text-white text-center mt-4">Learn about relevant openings as soon as they become available.</h3>

        <button class="mt-6 mb-5 bg-orange-600 text-white font-semibold py-2 px-6 rounded hover:bg-white hover:text-black transition-colors block mx-auto">
            Join Community
        </button>
</div>

<div class="mt-10 mb-10">
        <img 
            src="images/apply.png" 
            alt="Shutterstock footer image showing diverse group of employees"
            class="w-full h-auto object-cover">

            <button class="mt-6 bg-orange-600 text-white font-semibold py-2 px-6 rounded hover:bg-gray-200 hover:text-black transition-colors block mx-auto mb-10">
                View more
            </button>
</div>

<?php include 'footer.php'; ?>

</body>
</html>