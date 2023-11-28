var threshold;

function setThreshold(value)
{
    threshold = value
}

function calculatePd(solvencyRatio)
{
    var pd;

    if(solvencyRatio < threshold)
    {
        pd = ["R1", 5]
    }
    else
    {
        pd = ["R2", 20]
    }

    console.log(pd);

    return pd;
}

setThreshold(20);
calculatePd(10)
