class Flight {
  final String flightNumber;
  final String airline;
  final String airlineLogoUrl;
  final String departure;
  final String departureCode;
  final String arrival;
  final String arrivalCode;
  final String duration;
  final String status;
  final String arrivalTime;
  final String gate;
  final bool isDirect;

  Flight({
    required this.flightNumber,
    required this.airline,
    required this.airlineLogoUrl,
    required this.departure,
    required this.departureCode,
    required this.arrival,
    required this.arrivalCode,
    required this.duration,
    required this.status,
    required this.arrivalTime,
    required this.gate,
    required this.isDirect,
  });
}
