---
layout: ../layouts/PortfolioLayout.astro
title: Portfolio Gallery
---

<!--
  Since this is a Markdown file, we use HTML tags for the grid layout.
  Copy and paste the inner <div> block to add more photos.
-->

<div class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-3">
  
  <!-- Item 1 -->
  <div class="group relative overflow-hidden rounded-lg shadow-md transition-all hover:shadow-xl">
    <img src="https://placehold.co/600x400?text=Photo+1" alt="Photo 1" class="h-48 w-full object-cover transition-transform duration-300 group-hover:scale-105" />
    <div class="absolute inset-0 flex items-center justify-center bg-black/40 opacity-0 transition-opacity duration-300 group-hover:opacity-100">
      <span class="text-lg font-semibold text-white">Photo 1</span>
    </div>
  </div>

  <!-- Item 2 -->
  <div class="group relative overflow-hidden rounded-lg shadow-md transition-all hover:shadow-xl">
    <img src="https://placehold.co/600x400?text=Photo+2" alt="Photo 2" class="h-48 w-full object-cover transition-transform duration-300 group-hover:scale-105" />
    <div class="absolute inset-0 flex items-center justify-center bg-black/40 opacity-0 transition-opacity duration-300 group-hover:opacity-100">
      <span class="text-lg font-semibold text-white">Photo 2</span>
    </div>
  </div>

  <!-- Item 3 -->
  <div class="group relative overflow-hidden rounded-lg shadow-md transition-all hover:shadow-xl">
    <img src="https://placehold.co/600x400?text=Photo+3" alt="Photo 3" class="h-48 w-full object-cover transition-transform duration-300 group-hover:scale-105" />
    <div class="absolute inset-0 flex items-center justify-center bg-black/40 opacity-0 transition-opacity duration-300 group-hover:opacity-100">
      <span class="text-lg font-semibold text-white">Photo 3</span>
    </div>
  </div>

</div>
