const html = require('choo/html');

module.exports = function(state, emit) {
  return html`
    <send-modal
      class="absolute pin flex items-center justify-center overflow-hidden z-40 bg-white md:rounded-lg md:my-8"
      onclick="${close}"
    >
      <div
        class="h-full w-full max-h-screen absolute pin-t flex items-center justify-center"
      >
        <div class="w-full" onclick="${e => e.stopPropagation()}">
          ${state.modal(state, emit, close)}
        </div>
      </div>
    </send-modal>
  `;

  function close(event) {
    if (event) {
      event.preventDefault();
      event.stopPropagation();
    }
    state.modal = null;
    emit('render');
  }
};
