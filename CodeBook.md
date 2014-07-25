Description of the variables in the tidy summary of the Human Activity Survey dataset
=====================================================================================

The tidy summary of the Human Activity Survey dataset contains 180 rows and 68 columns. Below are the 68 column variables in this dataset along with a brief description. "SubjectID" is a number between 1 and 30, "TypeOfActivity" is a string identifier, and the remaining are means and standard deviations of measurements (such as accerlation, angular velocity, acceleration-jerk, and gyroscope-jerk - either from the body or due to gravity). These are normalized, with values between -1 and +1.

The variables selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing corresponding frequency domain signals of accerlation, angular velocity, acceleration-jerk, and gyroscope-jerk coming from the body and from gravity

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

**SubjectID** : 
Identification number of the subject. A number from 1-30

**TypeOfActivity** : 
Type of activity performed by subject. oen of - Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying

**TimeDomain.Body.Acceleration.Mean.Xaxis** : 
Mean of the body component of acceleration in the X-direction as a function of time

**TimeDomain.Body.Acceleration.Mean.Yaxis** : 
Mean of the body component of acceleration in the Y-direction as a function of time

**TimeDomain.Body.Acceleration.Mean.Zaxis** : 
Mean of the body component of acceleration in the Z-direction as a function of time

**TimeDomain.Gravity.Acceleration.Mean.Xaxis** : 
Mean of the gravity component of acceleration in the X-direction as a function of time

**TimeDomain.Gravity.Acceleration.Mean.Yaxis** : 
Mean of the gravity component of acceleration in the Y-direction as a function of time

**TimeDomain.Gravity.Acceleration.Mean.Zaxis** : 
Mean of the gravity component of acceleration in the Z-direction as a function of time

**TimeDomain.Body.Acceleration.Jerk.Mean.Xaxis** : 
Mean of the body component of acceleration-jerk (i.e. derivative of acceleration) in the X-direction as a function of time

**TimeDomain.Body.Acceleration.Jerk.Mean.Yaxis** : 
Mean of the body component of acceleration-jerk (i.e. derivative of acceleration) in the Y-direction as a function of time

**TimeDomain.Body.Acceleration.Jerk.Mean.Zaxis** : 
Mean of the body component of acceleration-jerk (i.e. derivative of acceleration) in the Z-direction as a function of time

**TimeDomain.Body.Gyroscope.Mean.Xaxis** : 
Mean of the body component of angular velocity in the X-direction as a function of time

**TimeDomain.Body.Gyroscope.Mean.Yaxis** :
Mean of the body component of angular velocity in the Y-direction as a function of time

**TimeDomain.Body.Gyroscope.Mean.Zaxis** :
Mean of the body component of angular velocity in the Z-direction as a function of time

**TimeDomain.Body.Gyroscope.Jerk.Mean.Xaxis** :
Mean of the body component of gyroscope-jerk (i.e. derivative of angular velocity) in the X-direction as a function of time

**TimeDomain.Body.Gyroscope.Jerk.Mean.Yaxis** :
Mean of the body component of gyroscope-jerk (i.e. derivative of angular velocity) in the Y-direction as a function of time

**TimeDomain.Body.Gyroscope.Jerk.Mean.Zaxis** : 
Mean of the body component of gyroscope-jerk (i.e. derivative of angular velocity) in the Z-direction as a function of time

**TimeDomain.Body.Acceleration.Magnitude.Mean.** :
Mean of the magnitude of the body component of acceleration as a function of time

**TimeDomain.Gravity.Acceleration.Magnitude.Mean.** :
Mean of the magnitude of the gravity component of acceleration as a function of time

**TimeDomain.Body.Acceleration.Jerk.Magnitude.Mean.** :
Mean of the magnitude of the body component of acceleration-jerk as a function of time

**TimeDomain.Body.Gyroscope.Magnitude.Mean.** : 
Mean of the magnitude of the body component of angular velocity as a function of time

**TimeDomain.Body.Gyroscope.Jerk.Magnitude.Mean.** : 
Mean of the magnitude of the body component of gyroscope-jerk (i.e. derivative of angular velocity) as a function of time

**FrequencyDomain.Body.Acceleration.Mean.Xaxis** : 
Mean of the body component of acceleration in the X-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Mean.Yaxis** : 
Mean of the body component of acceleration in the Y-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Mean.Zaxis** : 
Mean of the body component of acceleration in the Z-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Jerk.Mean.Xaxis** : 
Mean of the body component of acceleration-jerk (i.e. derivative of acceleration) in the X-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Jerk.Mean.Yaxis** : 
Mean of the body component of acceleration-jerk (i.e. derivative of acceleration) in the Y-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Jerk.Mean.Zaxis** : 
Mean of the body component of acceleration-jerk (i.e. derivative of acceleration) in the Z-direction as a function of frequency

**FrequencyDomain.Body.Gyroscope.Mean.Xaxis** : 
Mean of the body component of angular velocity in the X-direction as a function of frequency

**FrequencyDomain.Body.Gyroscope.Mean.Yaxis** : 
Mean of the body component of angular velocity in the Y-direction as a function of frequency

**FrequencyDomain.Body.Gyroscope.Mean.Zaxis** : 
Mean of the body component of angular velocity in the Z-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Magnitude.Mean.** : 
Mean of the magnitude of the body component of acceleration as a function of frequency

**FrequencyDomain.Body.Body.Acceleration.Jerk.Magnitude.Mean.** : 
Mean of the magnitude of the body component of acceleration-jerk as a function of frequency

**FrequencyDomain.Body.Body.Gyroscope.Magnitude.Mean.** : 
Mean of the magnitude of the body component of angular velocity as a function of frequency

**FrequencyDomain.Body.Body.Gyroscope.Jerk.Magnitude.Mean.** : 
Mean of the magnitude of the body component of gyroscope-jerk (i.e. derivative of angular velocity) as a function of frequency

**TimeDomain.Body.Acceleration.StandardDeviation.Xaxis** : 
Standard deviation of the body component of acceleration in the X-direction as a function of time

**TimeDomain.Body.Acceleration.StandardDeviation.Yaxis** : 
Standard deviation of the body component of acceleration in the Y-direction as a function of time

**TimeDomain.Body.Acceleration.StandardDeviation.Zaxis** : 
Standard deviation of the body component of acceleration in the Z-direction as a function of time

**TimeDomain.Gravity.Acceleration.StandardDeviation.Xaxis** : 
Standard deviation of the gravity component of acceleration in the X-direction as a function of time

**TimeDomain.Gravity.Acceleration.StandardDeviation.Yaxis** : 
Standard deviation of the gravity component of acceleration in the Y-direction as a function of time

**TimeDomain.Gravity.Acceleration.StandardDeviation.Zaxis** : 
Standard deviation of the gravity component of acceleration in the Z-direction as a function of time

**TimeDomain.Body.Acceleration.Jerk.StandardDeviation.Xaxis** : 
Standard deviation of the body component of acceleration-jerk in the X-direction as a function of time

**TimeDomain.Body.Acceleration.Jerk.StandardDeviation.Yaxis** : 
Standard deviation of the body component of acceleration-jerk in the Y-direction as a function of time

**TimeDomain.Body.Acceleration.Jerk.StandardDeviation.Zaxis** : 
Standard deviation of the body component of acceleration-jerk in the Z-direction as a function of time

**TimeDomain.Body.Gyroscope.StandardDeviation.Xaxis** : 
Standard deviation of the body component of angular velocity in the X-direction as a function of time

**TimeDomain.Body.Gyroscope.StandardDeviation.Yaxis** : 
Standard deviation of the body component of angular velocity in the Y-direction as a function of time

**TimeDomain.Body.Gyroscope.StandardDeviation.Zaxis** : 
Standard deviation of the body component of angular velocity in the Z-direction as a function of time

**TimeDomain.Body.Gyroscope.Jerk.StandardDeviation.Xaxis** : 
Standard deviation of the body component of gyroscope-jerk in the X-direction as a function of time

**TimeDomain.Body.Gyroscope.Jerk.StandardDeviation.Yaxis** : 
Standard deviation of the body component of gyroscope-jerk in the Y-direction as a function of time

**TimeDomain.Body.Gyroscope.Jerk.StandardDeviation.Zaxis** : 
Standard deviation of the body component of gyroscope-jerk in the Z-direction as a function of time

**TimeDomain.Body.Acceleration.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the body component of acceleration as a function of time

**TimeDomain.Gravity.Acceleration.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the gravity component of acceleration as a function of time

**TimeDomain.Body.Acceleration.Jerk.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the body component of acceleration-jerk as a function of time

**TimeDomain.Body.Gyroscope.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the body component of angular velocity as a function of time
 
**TimeDomain.Body.Gyroscope.Jerk.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the body component of gyroscope jerk as a function of time

**FrequencyDomain.Body.Acceleration.StandardDeviation.Xaxis** : 
Standard deviation of the body component of acceleration in the X-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.StandardDeviation.Yaxis** : 
Standard deviation of the body component of acceleration in the Y-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.StandardDeviation.Zaxis** : 
Standard deviation of the body component of acceleration in the Z-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Jerk.StandardDeviation.Xaxis** : 
Standard deviation of the body component of acceleration-jerk in the X-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Jerk.StandardDeviation.Yaxis** : 
Standard deviation of the body component of acceleration-jerk in the Y-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Jerk.StandardDeviation.Zaxis** : 
Standard deviation of the body component of acceleration-jerk in the Z-direction as a function of frequency

**FrequencyDomain.Body.Gyroscope.StandardDeviation.Xaxis** : 
Standard deviation of the body component of angular velocity in the X-direction as a function of frequency

**FrequencyDomain.Body.Gyroscope.StandardDeviation.Yaxis** : 
Standard deviation of the body component of angular velocity in the Y-direction as a function of frequency

**FrequencyDomain.Body.Gyroscope.StandardDeviation.Zaxis** : 
Standard deviation of the body component of angular velocity in the Z-direction as a function of frequency

**FrequencyDomain.Body.Acceleration.Magnitude.StandardDeviation.** :         
Standard deviation of the magnitude of the body component of acceleration as a function of frequency

**FrequencyDomain.Body.Body.Acceleration.Jerk.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the body component of acceleration-jerk as a function of frequency

**FrequencyDomain.Body.Body.Gyroscope.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the body component of angular velocity as a function of frequency

**FrequencyDomain.Body.Body.Gyroscope.Jerk.Magnitude.StandardDeviation.** : 
Standard deviation of the magnitude of the body component of gyroscope-jerk as a function of frequency
