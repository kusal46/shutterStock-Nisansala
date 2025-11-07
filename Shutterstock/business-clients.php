<?php
// 💡 PHP Variables for Dynamic Content
$main_heading = "One partner to do it all";
$description_text = "Discover how Shutterstock has become the leading creative platform for transformative brands.";
$button_text = "Request a quote";
$enterprise_label = "enterprise";

// 💡 Case Study Data (Shutterstock Studios)
$case_studies = [
    [
        'title' => 'Essie',
        'image' => 'essie.png',
        'tagline' => 'A fresh makeover for Essie\'s online and in-store presence.',
        'details' => 'See how Shutterstock helped Essie achieve a stunning new look.'
    ],
    [
        'title' => 'AWS',
        'image' => 'aws.png',
        'tagline' => 'Animated short films showing how AWS powers a variety of businesses.',
        'details' => 'AWS leveraged Shutterstock Studios for engaging animated content.'
    ],
    [
        'title' => 'Carvana',
        'image' => 'bluecar.jpg',
        'tagline' => 'A video teaser and image library of Jimmie Johnson\'s Indy Livery.',
        'details' => 'Custom content creation for Carvana\'s major racing sponsorship.'
    ],
    [
        'title' => 'Pacifico',
        'image' => 'yellowtin.png',
        'tagline' => 'See how Shutterstock Studios combined city scenery with oceanside vibes to give Pacifico the custom-made broadcast.',
        'details' => 'Bespoke footage delivered for Pacifico\'s latest marketing campaign.'
    ],
    [
        'title' => 'Porsche',
        'image' => 'car.png',
        'tagline' => 'Studios shifted into high gear with lifestyle shoots featuring talent and vehicles in various locations.',
        'details' => 'Porsche utilized lifestyle photography and video production services.'
    ],
    [
        'title' => 'Snapchat',
        'image' => 'cat.png',
        'tagline' => 'Shutterstock Studios created custom animations, emojis, and filters to elevate Snapchat\'s social media standing.',
        'details' => 'Innovative content designed for social media platforms.'
    ],
];

// 💡 Editorial and API Case Studies Data
$editorial_studies = [
    ['title' => 'Condé Nast Archive', 'image' => 'conder-nast.jpg', 'type' => 'Editorial'], 
    ['title' => 'The LIFE Picture Collection', 'image' => 'life.jpg', 'type' => 'Editorial'], 
    ['title' => 'A+E Networks', 'image' => 'A+E.jpg', 'type' => 'Editorial'], 
];

$api_studies = [
    ['title' => 'Facebook', 'image' => 'fb.jpg', 'description' => 'Gives businesses millions of Shutterstock images to create highly relevant ad campaigns.'],
    ['title' => 'Microsoft', 'image' => 'microsoft.jpg', 'description' => 'Helps advertisers find inclusive imagery that resonates with audiences and drives performance.'], 
    ['title' => 'Printify', 'image' => 'box.jpg', 'description' => 'Simplifies the design process for custom print products with easy editing tools and access to millions of images.'], 
];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shutterstock Clone</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/a2e0e9f6a5.js" crossorigin="anonymous"></script>
    </head>

    <body class="bg-white text-gray-800">

    <?php include 'header.php'; ?>

    <section class="relative h-[50vh] overflow-hidden">
        <video id="heroVideo" playsinline autoplay muted loop
            poster="assets/images/fallback-image.jpg"
            class="absolute top-1/2 left-1/2 min-w-full min-h-full w-auto h-auto object-cover transform -translate-x-1/2 -translate-y-1/2 z-0">
            <source src="assets/videos/hero_video.mp4" type="video/mp4">
            <source src="assets/videos/bgvideo.webm" type="video/webm">
            Your browser does not support the video tag.
        </video>

        <div class="relative z-10 flex flex-col items-center justify-center h-full text-white text-center p-4 bg-black bg-opacity-40">
            <div class="max-w-4xl mx-auto">
                
                <div class="flex items-center justify-center mb-4">
                    <span class="text-sm px-2 py-1 rounded bg-yellow-400 text-black font-semibold mr-2">e</span>
                    <span class="text-xl font-light tracking-wider"><?= $enterprise_label ?></span>
                </div>

                <h1 class="text-6xl md:text-7xl font-light mb-6 leading-tight"><?= $main_heading ?></h1>
                <p class="text-lg md:text-xl font-light mb-12 max-w-2xl mx-auto"><?= $description_text ?></p>
                
                <button class="px-12 py-4 bg-white text-black text-lg font-medium rounded-full shadow-xl hover:bg-gray-100 transition duration-300"><?= $button_text ?></button>
            </div>
        </div>
        
        <button id="videoToggleBtn" class="absolute bottom-4 right-4 z-20 p-2 text-white hover:opacity-80 transition duration-300" aria-label="Toggle Video Playback">
            <i class="fas fa-pause text-2xl" id="toggleIcon"></i>
        </button>
    </section>

    <section class="py-16 px-4">
        <div class="text-center mb-12">
        <h2 class="text-3xl font-light mb-2">Produced with Shutterstock Studios: Case studies</h2>
        <p class="text-gray-500">Selected client work showing the power of custom creative services.</p>
        </div>

        <div class="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <?php foreach ($case_studies as $study): ?>
            <a href="#" class="group block bg-gray-50 rounded-lg overflow-hidden transition duration-300">
                <div class="relative overflow-hidden h-60">
                    <img src="assets/images/<?= $study['image'] ?>"
                        
                        class="w-full h-full object-cover transform transition duration-500 group-hover:scale-105">
                    <div class="absolute bottom-0 left-0 bg-opacity-30 p-4 w-full">
                        <!-- <h3 class="text-white text-xl font-medium"><?= $study['title'] ?></h3> -->
                    </div>
                </div>
                <div class="p-4">
                    <h5 class="text-black font-medium"><?= $study['title'] ?></h5>
                    <p class="text-sm text-gray-700 mb-2 font-medium"><?= $study['tagline'] ?></p>
                    <p class="text-xs text-gray-500"><?= $study['details'] ?></p>
                </div>
            </a>
            <?php endforeach; ?>
        </div>
    </section>
    
    ---

    <section class="py-16 px-4 bg-white">
        <div class="max-w-7xl mx-auto">
            
            <h2 class="text-center text-3xl font-light mb-10">Access iconic moments and unrivaled content from these exclusive partnerships.</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-16">
                <?php foreach ($editorial_studies as $study): ?>
                <a href="#" class="group block relative overflow-hidden h-64 shadow-lg rounded-lg">
                    <img src="assets/images/<?= $study['image'] ?>" 
                        alt="<?= $study['title'] ?>" 
                        class="w-full h-full object-cover transition duration-500 group-hover:scale-105">
                    <div class="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent"></div>
                    <div class="absolute bottom-0 left-0 p-4 text-white">
                        <h3 class="text-2xl font-bold mb-1 leading-none"><?= $study['title'] ?></h3>
                    </div>
                </a>
                <?php endforeach; ?>
            </div>

            <h2 class="text-center text-3xl font-light mb-10">Accomplished with Shutterstock API: Case studies</h2>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-16">
                <?php foreach ($api_studies as $study): ?>
                <a href="#" class="block group">
                    <div class="relative overflow-hidden h-56 rounded-lg shadow-lg">
                        <img src="assets/images/<?= $study['image'] ?>" 
                            alt="<?= $study['title'] ?>" 
                            class="w-full h-full object-cover transition duration-500 group-hover:scale-105">
                    </div>
                    <h3 class="text-xl font-medium mt-4 mb-2"><?= $study['title'] ?></h3>
                    <p class="text-gray-500 text-sm"><?= $study['description'] ?></p>
                </a>
                <?php endforeach; ?>
            </div>

            <h2 class="text-center text-3xl font-light mb-12">Trusted by big brands everywhere</h2>
            <div class="text-center">
                <img src="assets/images/all-logo.jpg" alt="Brand Logos" class="mx-auto max-w-full h-auto">
            </div>

        </div>
    </section>

    <?php include 'LetsBuildSection.php'; ?>

    <?php include 'footer.php'; ?>

    <script>
        const video = document.getElementById('heroVideo');
        const toggleBtn = document.getElementById('videoToggleBtn');
        const toggleIcon = document.getElementById('toggleIcon');

        toggleBtn.addEventListener('click', () => {
            if (video.paused || video.ended) {
                video.play();
                toggleIcon.classList.remove('fa-play');
                toggleIcon.classList.add('fa-pause');
            } else {
                video.pause();
                toggleIcon.classList.remove('fa-pause');
                toggleIcon.classList.add('fa-play');
            }
        });
    </script>
</body>
</html>