# Heritage Intraday Intelligence Engine

> **Pre-Market Quantitative Trading Desk • NSE & BSE Daily Intelligence**  
> **Author:** Chaitanya Chennavajjula  
> **Cycle:** Daily Pre-Open at 08:50 AM IST (Before 09:15 AM Market Open)

---

## ⚠️ Post Script (P.S.) — Mandatory Caution & Non-Liability Notice

> **The data, statistical historical rally metrics, corporate filings interpretations, and intraday stock predictions present in this repository do not suggest, constitute, or represent financial advice, investment advice, trading calls, or securities recommendations to anyone.**  
>  
> **The author (Chaitanya Chennavajjula) is nowhere responsible or liable for any financial losses or profits incurred on investments or trades. This project is engineered purely for knowledge and educational purposes only, and all data or setups should be taken with your own caution, independent verification, and personal risk analysis.**

---

## 🏛️ Overview

The **Heritage Intraday Intelligence Engine** is a quantitative pre-market workstation and local daemon agent designed with an "old money" heritage aesthetic—featuring British racing green surfaces, antique brass accents, warm parchment typography, wax seal conviction ratings, and mechanical chronometer bells.

It monitors overnight global benchmarks (S&P 500, Nasdaq, Nikkei 225, Brent Crude, US 10Y Yields, USD/INR), synthesizes corporate earnings and dividend announcements, calculates 5-day historical rally momentum, and generates high-probability intraday setups with precise **Floor Pivot levels ($P, R_1, R_2, S_1, S_2$)**, entry ranges, targets, stop-losses, and risk-to-reward ratios.

---

## ✨ Features

- **Trading App Mode Selector**: Seamlessly toggle between **Zerodha Kite** (MIS / GTT OCO orders, DOM Depth 20, F1/F2 shortcuts) and **Groww** (Intraday orders, Advance SL Trigger price, 1-tap swipe).
- **High-Frequency Real-Time Price Ticker**: Configurable concurrency refresh rates (1.5s Ultra-Fast, 3.0s Standard, 5.0s Low-Bandwidth, or Paused) updating live CMP and distance to targets.
- **On-Demand Live Sweep (Any Time)**: Dedicated controls in the top bar and action banner to trigger real-time data ingestion and level recalculation at any hour.
- **Autonomous Local Daemon (`market_agent.py`)**: Standalone Python script that scrapes real-time quotes without requiring third-party pip dependencies, outputs rich ANSI terminal reports, and emits native OS notifications (macOS AppleScript, Linux notify-send, Windows Toast).
- **Automated Scheduling (`setup_cron.sh`)**: One-command crontab setup for automated execution at 08:50 AM IST every Monday through Friday.
- **GitHub Pages Ready**: `index.html` is situated at the repository root for instantaneous 1-click deployment.

---

## 🚀 Quick Start

### 1. Web Dashboard (Local or GitHub Pages)
Open `index.html` directly in any modern web browser, or enable GitHub Pages in your repo settings (`Settings > Pages > Branch: main / root`).

### 2. Standalone Python Agent (CLI)
Run an on-demand live sweep:
```bash
python3 market_agent.py --all
```

Run with native OS desktop alerts:
```bash
python3 market_agent.py --notify
```

Select specific broker mode formatting:
```bash
python3 market_agent.py --broker kite --all
# or
python3 market_agent.py --broker groww --all
```

### 3. Automated Daily Crontab (08:50 AM IST)
```bash
chmod +x setup_cron.sh
./setup_cron.sh
```

---

## 📦 Pushing to Your GitHub Account

1. Create a new repository on [GitHub](https://github.com/new) named `intraday-intel-desk`.
2. Push this directory:
```bash
git remote add origin https://github.com/<YOUR_USERNAME>/intraday-intel-desk.git
git branch -M main
git push -u origin main
```
3. To host the live web application on GitHub Pages:
   - Go to **Settings > Pages**.
   - Under **Build and deployment**, select **Source: Deploy from a branch**.
   - Select branch **`main`** and folder **`/ (root)`**, then click **Save**.
   - Your live site will be accessible at: `https://<YOUR_USERNAME>.github.io/intraday-intel-desk/`.

---

## 📜 License

Created by **Chaitanya Chennavajjula**. Licensed under the [MIT License](LICENSE).
