(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer('/cable');


}).call(this);
