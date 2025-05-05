document.addEventListener('DOMContentLoaded', function() {
  // Testimonial Slider functionality
  const testimonials = document.querySelectorAll('.testimonial');
  const dots = document.querySelectorAll('.dot');
  const prevBtn = document.querySelector('.prev-btn');
  const nextBtn = document.querySelector('.next-btn');
  let currentIndex = 0;

  // Initialize the slider
  function showTestimonial(index) {
    // Hide all testimonials
    testimonials.forEach(testimonial => {
      testimonial.classList.remove('active');
    });
    
    // Remove active class from all dots
    dots.forEach(dot => {
      dot.classList.remove('active');
    });
    
    // Show the current testimonial and activate corresponding dot
    testimonials[index].classList.add('active');
    dots[index].classList.add('active');
    currentIndex = index;
  }

  // Event listeners for dots
  dots.forEach(dot => {
    dot.addEventListener('click', function() {
      const dotIndex = parseInt(this.getAttribute('data-index'));
      showTestimonial(dotIndex);
    });
  });

  // Event listeners for prev/next buttons
  prevBtn.addEventListener('click', function() {
    let newIndex = currentIndex - 1;
    if (newIndex < 0) {
      newIndex = testimonials.length - 1;
    }
    showTestimonial(newIndex);
  });

  nextBtn.addEventListener('click', function() {
    let newIndex = currentIndex + 1;
    if (newIndex >= testimonials.length) {
      newIndex = 0;
    }
    showTestimonial(newIndex);
  });

  // Auto-advance the slider every 5 seconds
  setInterval(function() {
    let newIndex = currentIndex + 1;
    if (newIndex >= testimonials.length) {
      newIndex = 0;
    }
    showTestimonial(newIndex);
  }, 5000);

  // Smooth scrolling for navigation links
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
      e.preventDefault();
      const targetId = this.getAttribute('href');
      const targetElement = document.querySelector(targetId);
      
      if (targetElement) {
        window.scrollTo({
          top: targetElement.offsetTop - 70, // Offset for fixed navbar
          behavior: 'smooth'
        });
      }
    });
  });

  // Animate elements when they come into viewport
  const animateOnScroll = function() {
    const featureCards = document.querySelectorAll('.feature-card');
    const benefitsContainers = document.querySelectorAll('.benefits-container');
    const downloadContainer = document.querySelector('.download-container');
    
    // Helper function to check if element is in viewport
    const isInViewport = function(element, offset = 150) {
      const bounding = element.getBoundingClientRect();
      return (
        bounding.top <= (window.innerHeight - offset || document.documentElement.clientHeight - offset)
      );
    };
    
    // Animate feature cards
    featureCards.forEach((card, index) => {
      if (isInViewport(card)) {
        setTimeout(() => {
          card.style.opacity = '1';
          card.style.transform = 'translateY(0)';
        }, index * 100); // Stagger the animations
      }
    });
    
    // Animate benefits containers
    benefitsContainers.forEach(container => {
      if (isInViewport(container)) {
        container.style.opacity = '1';
        container.style.transform = 'translateY(0)';
      }
    });
    
    // Animate download container
    if (downloadContainer && isInViewport(downloadContainer)) {
      downloadContainer.style.opacity = '1';
      downloadContainer.style.transform = 'translateY(0)';
    }
  };

  // Set initial styles for animated elements
  document.querySelectorAll('.feature-card, .benefits-container, .download-container').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(30px)';
    el.style.transition = 'opacity 0.6s ease-out, transform 0.6s ease-out';
  });

  // Run animations on page load and scroll
  window.addEventListener('scroll', animateOnScroll);
  window.addEventListener('load', animateOnScroll);
  
  // Handle mobile menu toggle if needed in the future
  // For now, the menu is simple enough to display fully
  
  // Initialize animations
  animateOnScroll();

  // Add floating effect to hero image
  const heroImage = document.querySelector('.hero-image');
  if (heroImage) {
    let floatAnimation = function() {
      heroImage.animate([
        { transform: 'translateY(0px)' },
        { transform: 'translateY(-15px)' },
        { transform: 'translateY(0px)' }
      ], {
        duration: 3000,
        iterations: Infinity
      });
    };
    floatAnimation();
  }
});

document.addEventListener('DOMContentLoaded', function() {
  const images = document.querySelectorAll('.hero-image-carousel .carousel-img');
  const dots = document.querySelectorAll('.hero-image-carousel .dot');
  const prevBtn = document.querySelector('.hero-image-carousel .prev');
  const nextBtn = document.querySelector('.hero-image-carousel .next');
  let current = 0;

  function showImage(idx) {
      images.forEach((img, i) => {
          img.classList.toggle('active', i === idx);
      });
      dots.forEach((dot, i) => {
          dot.classList.toggle('active', i === idx);
      });
      current = idx;
  }

  prevBtn.addEventListener('click', () => {
      showImage((current - 1 + images.length) % images.length);
  });

  nextBtn.addEventListener('click', () => {
      showImage((current + 1) % images.length);
  });

  dots.forEach(dot => {
      dot.addEventListener('click', () => {
          showImage(Number(dot.dataset.index));
      });
  });

  // Optional: auto-advance every 5 seconds
  // setInterval(() => nextBtn.click(), 5000);
});