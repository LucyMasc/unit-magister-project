const modalWindow = function () {
  $("#myModal").on("shown.bs.modal", function () {
    $("#myInput").trigger("focus");
  });
};

export { modalWindow };
