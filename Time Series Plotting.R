# Written by CoPilot for class
#

# Load data
prey_data <- read.csv("prey_population.csv")
predator_data <- read.csv("predator_population.csv")

# Create the plot
png("predator_prey_plot.png")  # Save as PNG
plot(prey_data$Time, prey_data$Prey, type = "l", col = "blue", lwd = 2,
     xlab = "Time", ylab = "Population", main = "Predator-Prey Dynamics")
lines(predator_data$Time, predator_data$Predator, col = "red", lwd = 2)

# Add legend
legend("topright", legend = c("Prey", "Predator"), col = c("blue", "red"), lwd = 2)

dev.off()  # Close the PNG device
