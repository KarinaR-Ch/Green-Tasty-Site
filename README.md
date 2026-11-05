# Green & Tasty

Green & Tasty is a standalone, responsive restaurant landing page. The markup,
styles, JavaScript, and images are all contained in `index.html`; no package
manager, build step, or external assets are required.

## Run locally

Open `index.html` in a browser.

## Demo account

The sign-up and sign-in forms are a browser-only demo. New accounts are saved
in the browser's local storage with a salted PBKDF2 password hash, and sign-in
is checked locally. There is no backend authentication; do not use real
passwords or sensitive information. Clearing browser data removes saved demo
accounts. A signed-in state lasts only until the page is reloaded.

## Table booking

The booking form is a browser-only demo. It accepts dates from today through
the next 20 days and half-hour reservations during service hours. With the
default 1.5-hour stay, bookable start times run from 10:00 through 20:00, with
elapsed times for today unavailable. Future slots start available and a
confirmed booking blocks overlapping times at that location in the current
browser. There is no backend, so bookings are not synchronized between
browsers or sent to the restaurant.

## Shopping cart

The shopping cart is available after signing in and is kept in memory for the
current page session. Pre-orders can be added to a reservation from its
confirmation dialog or invitation link. Invitation links contain the reservation
and pre-order details in the URL fragment; this data is readable by anyone who
has the link and is not encrypted. Orders and checkout are not connected to a
restaurant.

## Build the container

Build the Docker image from the project root:

```sh
docker build -t green-and-tasty .
```

The Nginx container serves the root `index.html` on port `8080`. Kubernetes
deployment templates are in `deploy-templates/`.