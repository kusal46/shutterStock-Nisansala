<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Request a quote</title>

    <!-- Tailwind CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- Poppins font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        /* Global font */
        body { font-family: "Poppins", system-ui, -apple-system, Segoe UI, Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif; }

        /* Make form controls inherit font */
        input, select, button, textarea { font: inherit; }

        /* Clean underline input baseline */
        .underline-field {
        background: transparent;
        border: 0;
        border-bottom: 1px solid #d1d5db; /* gray-300 */
        padding: 0.5rem 0;               /* py-2 */
        outline: none;
        width: 100%;
        color: #111827;                  /* gray-900 */
        }
        .underline-field::placeholder { color: #9ca3af; }      /* gray-400 */
        .underline-field:focus { border-bottom-color: #111827; }/* gray-900 */

        /* Select reset + arrow space */
        .select-reset {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        background: transparent;
        border: 0;
        border-bottom: 1px solid #d1d5db;
        padding: 0.5rem 2rem 0.5rem 0;   /* right padding for arrow */
        outline: none;
        width: 100%;
        color: #111827;
        }
        .select-reset:focus { border-bottom-color: #111827; }
        .select-placeholder { color: #9ca3af; } /* for the placeholder-like first option */

        /* Checkbox: square, subtle border; use accent for check color */
        .chk {
        width: 20px; height: 20px;
        accent-color: #dc2626; /* red-600 */
        border: 2px solid #9ca3af; /* gray-400 */
        border-radius: 6px;
        }

        /* Card rounded corners like screenshot */
        .card {
        border-radius: 22px;
        box-shadow: 0 20px 45px rgba(0,0,0,.12);
        border: 1px solid rgba(0,0,0,.06);
        background: #fff;
        }

        /* Big pill CTA */
        .cta {
        border-radius: 9999px;
        background-image: linear-gradient(90deg, #ef4444, #dc2626); /* red-500 -> red-600 */
        }
        .cta:hover { background-image: linear-gradient(90deg, #f05151, #b91c1c); } /* hover */
    </style>
    </head>
    <body>
            <div class="card w-5xl max-w-xl p-5 text-gray-800">
                <h2 class="font-semibold mb-8">Tell us about yourself</h2>
        
                <form action="#" method="POST" class="space-y-6 text-sm">
                <!-- Row 1 -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-9">
                    <div>
                    <input class="underline-field" type="text" name="first_name" placeholder="First name *" required>
                    </div>
                    <div>
                    <input class="underline-field" type="text" name="last_name" placeholder="Last name *" required>
                    </div>
                </div>
        
                <!-- Row 2 -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div>
                    <input class="underline-field" type="tel" name="phone" placeholder="Phone number *" required>
                    </div>
                    <div>
                    <input class="underline-field" type="email" name="email" placeholder="Business Email Address *" required>
                    </div>
                </div>
        
                <!-- Row 3 -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div>
                    <input class="underline-field" type="text" name="company" placeholder="Company *" required>
                    </div>
                    <div class="relative">
                    <select class="select-reset" name="company_size" required>
                        <option value="" selected disabled class="select-placeholder">Company Size *</option>
                        <option>1–10</option>
                        <option>11–50</option>
                        <option>51–200</option>
                        <option>201–1,000</option>
                        <option>1,001–5,000</option>
                        <option>5,001+</option>
                    </select>
                    <!-- Chevron -->
                    <svg class="pointer-events-none absolute right-0 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 10.94l3.71-3.71a.75.75 0 111.06 1.06l-4.24 4.24a.75.75 0 01-1.06 0L5.21 8.29a.75.75 0 01.02-1.08z" clip-rule="evenodd"/>
                    </svg>
                    </div>
                </div>
        
                <!-- Row 4 -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div class="relative">
                    <select class="select-reset" name="job_role" required>
                        <option value="" selected disabled class="select-placeholder">Job Role *</option>
                        <option>Founder / Owner</option>
                        <option>Marketing</option>
                        <option>Design / Creative</option>
                        <option>Engineering / Product</option>
                        <option>Other</option>
                    </select>
                    <svg class="pointer-events-none absolute right-0 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 10.94l3.71-3.71a.75.75 0 111.06 1.06l-4.24 4.24a.75.75 0 01-1.06 0L5.21 8.29a.75.75 0 01.02-1.08z" clip-rule="evenodd"/>
                    </svg>
                    </div>
                    <div class="relative">
                    <select class="select-reset" name="job_function" required>
                        <option value="" selected disabled class="select-placeholder">Job Function *</option>
                        <option>Individual Contributor</option>
                        <option>Manager</option>
                        <option>Director</option>
                        <option>VP / C-Level</option>
                    </select>
                    <svg class="pointer-events-none absolute right-0 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 10.94l3.71-3.71a.75.75 0 111.06 1.06l-4.24 4.24a.75.75 0 01-1.06 0L5.21 8.29a.75.75 0 01.02-1.08z" clip-rule="evenodd"/>
                    </svg>
                    </div>
                </div>
        
                <!-- Country (label style like screenshot) -->
                <div>
                    <label class="block text-sm text-gray-500 mb-1">Country *</label>
                    <div class="relative">
                    <select class="select-reset" name="country" required>
                        <option class="select-placeholder" value="United States" selected>United States</option>
                        <option>Australia</option>
                        <option>United Kingdom</option>
                        <option>Sri Lanka</option>
                        <option>Other</option>
                    </select>
                    <svg class="pointer-events-none absolute right-0 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 10.94l3.71-3.71a.75.75 0 111.06 1.06l-4.24 4.24a.75.75 0 01-1.06 0L5.21 8.29a.75.75 0 01.02-1.08z" clip-rule="evenodd"/>
                    </svg>
                    </div>
                </div>
        
                <!-- Row 5 -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div class="relative">
                    <select class="select-reset text-gray-500" name="state">
                        <option value="" selected class="select-placeholder">State or province</option>
                        <option>New South Wales</option>
                        <option>Victoria</option>
                        <option>Queensland</option>
                        <option>Other</option>
                    </select>
                    <svg class="pointer-events-none absolute right-0 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 10.94l3.71-3.71a.75.75 0 111.06 1.06l-4.24 4.24a.75.75 0 01-1.06 0L5.21 8.29a.75.75 0 01.02-1.08z" clip-rule="evenodd"/>
                    </svg>
                    </div>
                    <div class="relative">
                    <select class="select-reset text-gray-500" name="product_interest">
                        <option value="" selected class="select-placeholder">Product Of Interest</option>
                        <option>Licensing</option>
                        <option>Custom Content</option>
                        <option>Editorial</option>
                        <option>API</option>
                    </select>
                    <svg class="pointer-events-none absolute right-0 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                        <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 10.94l3.71-3.71a.75.75 0 111.06 1.06l-4.24 4.24a.75.75 0 01-1.06 0L5.21 8.29a.75.75 0 01.02-1.08z" clip-rule="evenodd"/>
                    </svg>
                    </div>
                </div>
        
                <!-- Checkbox -->
                <div class="flex items-start gap-3">
                    <input id="updates" name="updates" type="checkbox" class="chk mt-0.5">
                    <label for="updates" class="text-sm text-gray-700">
                    Keep me updated with newsletters, editorial highlights, events, and product updates.
                    </label>
                </div>
        
                <!-- CTA -->
                <button type="submit" class="cta w-full py-4 text-white font-medium">
                    Request quote
                </button>
                </form>
            </div>
        </div>
    </div>


</body>
</html>
