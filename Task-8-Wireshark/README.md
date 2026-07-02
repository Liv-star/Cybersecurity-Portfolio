# Network Traffic Capture with Wireshark

## Project Information

**Task:** Capture Network Traffic with Wireshark

**Analyst:** Praise Olivia Mazana

**Tool Used:** Wireshark

**Operating System:** Ubuntu Linux

---

# Objective

The objective of this project was to capture live network traffic using Wireshark, filter HTTP packets, and analyze the captured network communication.

---

# Tools Used

- Wireshark
- Ubuntu Linux
- Web Browser (Firefox)

---

# Installing Wireshark

Update the package list:

```bash
sudo apt update
```

Install Wireshark:

```bash
sudo apt install wireshark -y
```

Verify installation:

```bash
wireshark --version
```

---

# Capturing Network Traffic

1. Open Wireshark.
2. Select the active network interface.
3. Start packet capture.
4. Generate network traffic by browsing websites.
5. Stop the capture after sufficient packets have been collected.

---

# Filtering HTTP Traffic

To display only HTTP packets, use the following display filter:

```
http
```

If HTTP traffic is unavailable because most websites use HTTPS, capture traffic from a local web server or use the following filters:

```
tcp.port == 80
```

or

```
http.request
```

---

# Packet Analysis

The captured HTTP packets contained:

- Source IP Address
- Destination IP Address
- Source Port
- Destination Port
- HTTP GET Requests
- HTTP Response Codes
- Packet Length
- Time Stamps

Example observations:

- Client initiated an HTTP GET request.
- Server responded with an HTTP 200 OK message.
- Communication occurred over TCP Port 80.

---

# Files Included

```
README.md
wireshark_capture.pcap
video
```

---

# Learning Outcomes

During this project I learned how to:

- Install Wireshark.
- Capture live network traffic.
- Identify active network interfaces.
- Filter packets using display filters.
- Analyze HTTP requests and responses.
- Interpret packet details including source and destination addresses.
- Save packet captures for future analysis.

---

# Conclusion

This exercise demonstrated the use of Wireshark as a powerful network protocol analyzer. Capturing and filtering HTTP traffic provided insight into how clients and servers communicate across a network and reinforced the importance of packet analysis in cybersecurity investigations.
