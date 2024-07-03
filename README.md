# OCDM
Orthogonal Chirp Division Multiplexing
# Fresnel and Inverse Fresnel Transforms in Wireless Communication

This repository contains explanations and equations related to Fresnel and Inverse Fresnel Transforms and their application in wireless communication.

## Continuous Fresnel Transform

The continuous Fresnel transform is used to model the propagation of electromagnetic waves in the near-field region. It accounts for phase changes due to distance and wavefront curvature.

### Equation

\[ \hat{s}(\tau) = \mathcal{F}_a \{ s(t) \} (\tau) = \frac{e^{-j\pi/4}}{\sqrt{a}} \int s(t) e^{j\pi/a (\tau - t)^2} \, dt \]

### Explanation

- \(\hat{s}(\tau)\): The Fresnel transform of the signal \(s(t)\) at position \(\tau\).
- \(\mathcal{F}_a\): The Fresnel transform operator with parameter \(a\).
- \(s(t)\): The input signal as a function of time \(t\).
- \(e^{-j\pi/4}\): A phase factor.
- \(\sqrt{a}\): Normalization factor.
- The exponential term \(e^{j\pi/a (\tau - t)^2}\): Represents the quadratic phase term of the Fresnel transform.
- The integral \(\int s(t) e^{j\pi/a (\tau - t)^2} \, dt\): Convolution of the signal with the quadratic phase exponential.

## Discrete Fresnel Transform

The discrete Fresnel transform is used for digital signal processing and analyzing discrete signal samples. It considers different cases for even and odd sample sizes.

### Equation

\[ \Phi(m, n) = \frac{1}{\sqrt{N}} e^{-j\pi/4} \times \begin{cases} 
e^{j\pi/N (m - n)^2} & \text{if } N \equiv 0 \ (\text{mod} \ 2) \\ 
e^{j\pi/N (m + \frac{1}{2} - n)^2} & \text{if } N \equiv 1 \ (\text{mod} \ 2) 
\end{cases} \]

### Explanation

- \(\Phi(m, n)\): The discrete Fresnel transform kernel for indices \(m\) and \(n\).
- \(N\): The number of discrete points.
- \(e^{-j\pi/4}\): A phase factor.
- \(\frac{1}{\sqrt{N}}\): Normalization factor.
- The two cases handle the even and odd values of \(N\) separately:
  - For \(N\) even (\(N \equiv 0 \ (\text{mod} \ 2)\)), the phase term is \(e^{j\pi/N (m - n)^2}\).
  - For \(N\) odd (\(N \equiv 1 \ (\text{mod} \ 2)\)), the phase term is \(e^{j\pi/N (m + \frac{1}{2} - n)^2}\).

## Application in Wireless Communication

### Signal Propagation

- These transforms are useful in modeling how electromagnetic waves propagate, particularly in the near-field region.
- They account for phase changes due to the distance and curvature of the wavefront, which is critical in designing and optimizing wireless communication systems.

### Antenna Design

- Understanding the Fresnel transform allows for better antenna design, especially in terms of beamforming and focusing the signal in desired directions.

### Diffraction and Multipath Effects

- Fresnel zones and transforms help analyze diffraction and multipath effects, improving the accuracy of link budget calculations and signal quality predictions.


These mathematical tools are essential in various wireless communication applications, from antenna design to signal processing and diffraction analysis.

### Please do not forget to cite the artilce as:

### Citation

"Ahmad M, Shin SY. A Comparative Performance Analysis of OCDM and OFDM for Wireless Communications. 한국통신학회 학술대회논문집. 2023 Jun:1380-1."

### References

[1] X. Ouyang and J. Zhao, "Orthogonal Chirp Division Multiplexing," in IEEE Transactions on Communications, vol. 64, no. 9, pp. 3946-3957, Sept. 2016.

[2] Zhang R, Wang Y, Ma X. Channel estimation for OCDM transmissions with carrier frequency offset. IEEE Wireless Communications Letters. 2021 Dec 7;11(3):483-7.

[3] Haif H, Zegrar SE, Arslan H. Novel OCDM Transceiver Design for Doubly-dispersive Channels. IEEE Transactions on Vehicular Technology. 2024 Feb 29.

[4] Solyman AA, Attar H, Khosravi MR, Koyuncu B. MIMO-OFDM/OCDM low-complexity equalization under a doubly dispersive channel in wireless sensor networks. International Journal of Distributed Sensor Networks. 2020 Jun;16(6):1550147720912950.

[5] Y. Wan et al., "Performance-Enhanced Optical Non-Orthogonal Multiple Access Enabled by Orthogonal Chirp Division Multiplexing," in Journal of Lightwave Technology, vol. 40, no. 16, pp. 5440-5449, 15 Aug.15, 2022.

[6] Ouyang X, Dobre O, Guan YL, Townsend P. Channel estimation for MIMO-OCDM systems as an emerging 6G radio access technology. In2022 IEEE Globecom Workshops (GC Wkshps) 2022 Dec 4 (pp. 1573-1578). IEEE.
