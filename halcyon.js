(() => {
  const themeList = document.getElementById('mdbook-theme-list');
  if (!themeList || document.getElementById('mdbook-theme-halcyon')) return;

  const item = document.createElement('li');
  item.setAttribute('role', 'none');
  item.innerHTML = '<button role="menuitem" class="theme" id="mdbook-theme-halcyon">Halcyon</button>';
  themeList.appendChild(item);

  if (localStorage.getItem('mdbook-theme') === 'halcyon') {
    document.documentElement.classList.remove('light', 'rust', 'coal', 'navy', 'ayu');
    document.documentElement.classList.add('halcyon');
    document.querySelectorAll('.theme-selected').forEach((element) => {
      element.classList.remove('theme-selected');
    });
    item.firstElementChild.classList.add('theme-selected');
  }

})();
