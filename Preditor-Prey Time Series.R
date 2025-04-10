# Written by CoPilot for class
#
# Equations for predators and prey are
#
# Prey equation: $$\frac{dx}{dt} = ax - bxy$$
# Predator equation: $$\frac{dy}{dt} = -cy + dxy$$
#
# Parameters
a <- 0.1   # Prey growth rate
b <- 0.02  # Predation rate
c <- 0.1   # Predator death rate
d <- 0.01  # Predator growth rate due to predation

# Initial populations
x <- 50  # Prey
y <- 10  # Predator

# Time steps
timesteps <- 5000
dt <- 0.01
time <- seq(0, dt * timesteps, by = dt)

# Storage for results
prey <- c(x, numeric(timesteps))
predator <- c(y, numeric(timesteps))

# Euler integration
for (t in 1:timesteps) {
  prey[t + 1] <- prey[t] + dt * (a * prey[t] - b * prey[t] * predator[t])
  predator[t + 1] <- predator[t] + dt * (-c * predator[t] + d * prey[t] * predator[t])
}

# Save results to CSV files
write.csv(data.frame(Time = time, Prey = prey), "prey_population.csv", row.names = FALSE)
write.csv(data.frame(Time = time, Predator = predator), "predator_population.csv", row.names = FALSE)