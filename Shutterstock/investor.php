<?php $page = 'investor'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Investor Relations Home | Shutterstock</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Add Inter font fallback for a closer match */
        body, html {
            font-family: 'Inter', sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background-color: #ffffff;
        }

        /* Custom Styles for Headings and Links to match the image */
        .header-link:hover {
            color: #ff6600; /* Subtle orange hover for primary links */
        }
        .section-box {
            /* Keep the underline effect for section titles, matching image style */
            padding-bottom: 0.5rem;
            border-bottom: 4px solid #5c5c5cff; /* Orange underline */
            display: inline-block;
        }
        .list-link {
            /* Black text for links, no default underline */
            display: block;
            color: #1f2937; /* Very dark gray/black */
            text-decoration: none;
            margin-top: 0.5rem;
            line-height: 1.4;
            font-weight: 500; /* Medium weight for link text */
        }
        .list-link:hover {
            /* Orange hover and underline */
            color: #323232ff;
            text-decoration: underline;
        }

        /* Style for the Investor Material/Quarterly Reports Links */
        .quarterly-link {
            display: flex;
            align-items: center;
            font-size: 0.875rem; /* text-sm */
            color: #3b82f6; /* Tailwind blue-600 for the link text */
            text-decoration: none;
        }
        .quarterly-link:hover {
            text-decoration: underline;
            color: #1d4ed8; /* Darker blue on hover */
        }
        .dot {
            width: 6px;
            height: 6px;
            border-radius: 50%;
            margin-right: 8px;
            display: inline-block;
        }
    </style>
</head>
<body class="min-h-screen flex flex-col">

    <header class="bg-white text-gray-800 border-b border-gray-100 shadow-sm sticky top-0 z-10">
        <div class="max-w-7xl mx-auto px-6 lg:px-8 py-4 flex justify-between items-center">
            
            <a href="/" class="text-3xl font-sans font-bold text-gray-900"><img src="images/image4.png" class="w-auto h-16"></a>
            
            <nav class="hidden lg:flex space-x-6 text-sm font-medium">
                <a href="#" class="header-link text-gray-700 hover:text-orange-600 transition-colors">Home</a>
                <a href="#" class="header-link text-gray-700 hover:text-orange-600 transition-colors">News & Events</a>
                
                <div class="group relative">
                    <button class="header-link text-gray-700 hover:text-orange-600 transition-colors flex items-center">
                        Stock
                        <svg class="ml-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    </div>

                <a href="#" class="header-link text-gray-700 hover:text-orange-600 transition-colors">Corporate Governance</a>
                <a href="#" class="header-link text-gray-700 hover:text-orange-600 transition-colors">Corporate Responsibility</a>
                
                <div class="group relative">
                    <button class="header-link text-gray-700 hover:text-orange-600 transition-colors flex items-center">
                        Financials & Filings
                        <svg class="ml-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    </div>

                <div class="group relative">
                    <button class="header-link text-gray-700 hover:text-orange-600 transition-colors flex items-center">
                        Investor Resources
                        <svg class="ml-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    </div>
            </nav>
            </div>
    </header>

    <main class="flex-grow">
        <div class="max-w-7xl mx-auto px-6 lg:px-8 pt-12">
            
            <div class="flex flex-col lg:flex-row justify-between mb-16">
                <div class="lg:w-3/5">
                    <h1 class="text-5xl font-extrabold text-gray-900 mb-4">Powering Creativity</h1>
                    <p class="text-lg text-gray-700 mb-8 max-w-2xl">
                        Shutterstock helps creative professionals and casual creators from all backgrounds and businesses of all sizes produce their best work with incredible content, innovative tools, and powerful data, all on one platform.
                    </p>
                </div>
                
                <div class="lg:w-1/4 p-6 border border-gray-300 rounded-lg shadow-md bg-white self-start mt-4 lg:mt-0">
                    <div class="text-base text-gray-600 mb-1">NYSE: <span class="font-bold text-gray-800">SSTK</span></div>
                    <div class="text-4xl font-extrabold text-gray-900 mb-1">$24.72</div>
                    <div class="text-lg text-red-600 font-semibold">
                        -0.59 (-2.33%)
                    </div>
                    <p class="text-xs text-gray-500 mt-2">Minimum 15 minutes delayed. Source: LSEG</p>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-4 gap-12 mt-12 mb-20">
                
                <div>
                    <h2 class="text-2xl font-extrabold text-gray-900 mb-6 section-box">Press Releases</h2>
                    <div class="space-y-4">
                        <div class="text-xs text-gray-500">October 23, 2025</div>
                        <a href="#" class="list-link font-medium">Is Creative Impact in Crisis? New Data Shows Why Consumer Connection is Failing...</a>
                        
                        <div class="text-xs text-gray-500">October 23, 2025</div>
                        <a href="#" class="list-link font-medium">Is Creative Impact in Crisis? New Data Shows Why Consumer Connection is Failing...</a>

                        <div class="text-xs text-gray-500">October 23, 2025</div>
                        <a href="#" class="list-link font-medium">Is Creative Impact in Crisis? New Data Shows Why Consumer Connection is Failing...</a>

                        <button class="mt-8 text-sm border-2 border-gray-400 text-gray-700 py-2 px-6 rounded-md hover:bg-gray-50 transition font-semibold">
                            View All News
                        </button>
                    </div>
                </div>

                <div>
                    <h2 class="text-2xl font-extrabold text-gray-900 mb-6 section-box">Events</h2>
                    <div class="space-y-4">
                        <div class="text-xs text-gray-500">Jan 7, 2026 8:30 AM EST</div>
                        <a href="#" class="list-link font-medium">Shutterstock and Getty Merger Announcement</a>

                         <div class="text-xs text-gray-500">Jan 7, 2026 8:30 AM EST</div>
                        <a href="#" class="list-link font-medium">Shutterstock and Getty Merger Announcement</a>

                         <div class="text-xs text-gray-500">Jan 7, 2026 8:30 AM EST</div>
                        <a href="#" class="list-link font-medium">Shutterstock and Getty Merger Announcement</a>
                        
                        <button class="mt-8 text-sm border-2 border-gray-400 text-gray-700 py-2 px-6 rounded-md hover:bg-gray-50 transition font-semibold">
                            View All Events
                        </button>
                    </div>
                </div>

                <div>
                    <h2 class="text-2xl font-extrabold text-gray-900 mb-6 section-box">Investor Materials</h2>
                    <div class="space-y-4">
                        <a href="#" class="list-link font-medium">Getty Images and Shutterstock Merger Announcement</a>
                        <a href="#" class="list-link font-medium">Shutterstock - Data Business Update</a>

                        <a href="#" class="list-link font-medium">Getty Images and Shutterstock Merger Announcement</a>
                        <a href="#" class="list-link font-medium">Shutterstock - Data Business Update</a>

                        <a href="#" class="list-link font-medium">Getty Images and Shutterstock Merger Announcement</a>
                        <a href="#" class="list-link font-medium">Shutterstock - Data Business Update</a>
                        
                        <button class="mt-8 text-sm border-2 border-gray-400 text-gray-700 py-2 px-6 rounded-md hover:bg-gray-50 transition font-semibold">
                            View All Events
                        </button>
                    </div>
                </div>

                <div>
                    <h2 class="text-2xl font-extrabold text-gray-900 mb-6 section-box">Latest Reports</h2>
                    <div class="p-6 border border-gray-200 rounded-md bg-gray-50">
                        <div class="text-5xl font-extrabold text-gray-900 leading-none">Q2<span class="block text-2xl font-bold">2025</span></div>
                        <div class="space-y-2 mt-4">
                            <a href="#" class="quarterly-link"><span class="dot bg-blue-600"></span> Press Release</a>
                            <a href="#" class="quarterly-link"><span class="dot bg-blue-600"></span> 10-Q</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <?php 
        // Note: The footer.php content from your previous response should be included here.
        // For a complete, self-contained file, you would put the footer code directly below,
        // but since you used 'include', I'll leave the PHP include statement.
        include 'footer.php'; 
    ?>

</body>
</html>