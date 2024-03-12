#include <bits/stdc++.h>

using namespace std;

#ifdef LOCAL
#include "debug.h"
#else
#define debug(...)
#endif

#define x first
#define y second
#define ir(a, x, b) ((a) <= (x) && (x) <= (b))
#define vec vector
#define rep(i, a, b) for (int i = a; i < (b); ++i)
#define all(x) (x).begin(), (x).end()

using ll = long long;

mt19937_64 gen;
ll r(ll a, ll b) { return gen()%(b-a+1) + a; }
ll ns() { 
    using namespace std::chrono;
    return duration_cast<nanoseconds>(high_resolution_clock::now().time_since_epoch()).count();
}

int main() {
    ios::sync_with_stdio(0); cin.tie(0); cout.tie(0);
    gen.seed(ns());
    
    return 0;
}
