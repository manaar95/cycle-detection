method brent() returns (lam:int, mu:int)
{
    var f: seq := [1,2,3,4,2,3,4,2,3,4,2,3,4];
    lam := 1;
    var power := lam;
    var tortoise := 0;
    var hare := 1;
    while f[tortoise] != f[hare]
    decreases |f| - hare > 0;
    {
        if power == lam
        {
            tortoise := hare;
            power := power * 2;
            lam := 0;
        }
        hare := hare + 1;
        lam := lam + 1;
    }
    mu := 0;
    hare := 0;
    var i := 1;
    tortoise := 0;
    while i < lam
    decreases lam - i;
    {
        hare := hare + 1;
        i := i + 1;
    }
    while f[tortoise] != f[hare]
    decreases |f| - hare > 0;
    {
        tortoise := tortoise + 1;
        hare := hare + 1;
        mu := mu + 1;
    }
    return lam, mu;
}
