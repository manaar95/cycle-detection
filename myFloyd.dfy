method floyd() returns (lam:int, mu:int)
{
    var f: seq := [1,2,3,4,2,3,4,2,3,4,2,3,4];
    
    var tortoise := 1;
    var hare := 2;
    assert 0 < tortoise < |f|;
    assert 0 < hare < |f|;
    while (f[tortoise] != f[hare])
    decreases |f| - tortoise > 0;
    {
        tortoise := tortoise + 1;
        hare := hare + 2;
    }
    mu := 0;
    tortoise := 0;
    while (f[tortoise] != f[hare])
    decreases |f| - tortoise > 0;
    {
        tortoise := tortoise + 1;
        hare := hare + 1;
        mu := mu + 1;
    }
    lam := 1;
    hare := tortoise + 1;
    while (f[tortoise] != f[hare])
    decreases |f| - hare > 0;
    {
        hare := hare + 1;
        lam := lam + 1;
    }
    return lam, mu;
}
