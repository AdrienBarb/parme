import flatpickr from "flatpickr";

const flatPickr = () => {



    flatpickr('.flatpickr', {
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d",
  });
}


export { flatPickr }

      // disable: [
      //     function(date) {
      //         // disable every multiple of 8
      //         return !(date.getDate() % 8);
      //     }
      // ]



